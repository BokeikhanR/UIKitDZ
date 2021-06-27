//
//  ViewController.swift
//  6_UISlider
//
//  Created by admin on 26.06.2021.
//

import UIKit

class ViewController: UIViewController {
 
    var songID = String ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "RaiM_Kolikpen" {
            guard let destination = segue.destination as? SecondViewController else {return}
            destination.songID = "RaiM_Kolikpen"
            destination.mainImageSend = UIImageView(image: UIImage(named: "Kolikpen"))
        }
        if segue.identifier == "RaiM_Where_Are_You" {
            guard let destination = segue.destination as? SecondViewController else {return}
            destination.songID = "RaiM_Where_Are_You"
            destination.mainImageSend = UIImageView(image: UIImage(named: "where"))
        }
    }

    @IBAction func firstMusic(_ sender: Any) {
    }
    
    @IBAction func secondMusic(_ sender: Any) {
    }
    
}

