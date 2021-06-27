//
//  SecondViewController.swift
//  6_UISlider
//
//  Created by admin on 26.06.2021.
//

import UIKit
import AVFoundation

class SecondViewController: UIViewController {
    
    var mainImageSend = UIImageView()
    var songID = String()
    var player = AVAudioPlayer()
    var slider = UISlider()

    
    @IBOutlet weak var songName: UILabel!
    
    @IBOutlet weak var songImage: UIImageView!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var sliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //MARK: - sliderVolume
        
        self.slider.frame = CGRect(x: 40, y: 680, width: 340, height: 30)
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
        
        
        //MARK: - addTarget
        self.slider.addTarget(self, action: #selector(changeSlider), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: songID, ofType: "mp3"){
            try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
                songName.text = songID
                
                songImage.image = UIImage(named: "Kolikpen")           }
        } catch  {
            print("Error")
        }
        
        self.player.play()
    }
    
    @objc func changeSlider(param: UISlider){
        if param == slider {
            self.player.currentTime = TimeInterval(param.value)
        }
    }
    
    //buttonBack
    @IBAction func backAction(_ sender: UIButton) {
        player.stop()
        dismiss(animated: true, completion: nil)
    }
    
    //MARK: Buttons
    @IBAction func backButton(_ sender: UIButton) {
         
            do {
                let audioPath = Bundle.main.path(forResource: "RaiM_Where_Are_You", ofType: "mp3")
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath ?? ""))
                songName.text = "RaiM_Where_Are_You"
                songID = "RaiM_Where_Are_You"
                songImage.image = UIImage(named: "where")
            } catch  {
                print("error")
            }

        player.play()
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
     
            do {
                let audioPath = Bundle.main.path(forResource: "RaiM_Kolikpen", ofType: "mp3")
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath ?? ""))
                songName.text = "RaiM_Kolikpen"
                songID = "RaiM_Kolikpen"
                songImage.image = UIImage(named: "Kolikpen")
            } catch  {
                print("Error")
            }
    
        player.play()
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        if player.isPlaying {
            player.pause()
            playButton.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            
        } else {
            player.play()
            playButton.setImage(UIImage(systemName: "play.fill"), for: .normal)

        }
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        self.player.volume = self.sliderOutlet.value
    }
}
