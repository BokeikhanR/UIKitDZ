//
//  ViewController.swift
//  15_UIButton
//
//  Created by admin on 08.07.2021.
//

import UIKit

class TimerViewController: UIViewController {

//MARK: - IBOutlets

    @IBOutlet weak var timerLabel: UILabel!

    @IBOutlet weak var startButton: UIButton!

    @IBOutlet weak var resetButton: UIButton!


//MARK: Visual Components

    private var timer = Timer()
    private var count = 0
    private var timerCouting = false

    override func viewDidLoad() {
        super.viewDidLoad()

        startButton.setTitleColor(UIColor.green, for: .normal)
    }

//MARK: - IBActions

//RESET Tapped

    @IBAction func resetTapped(_ sender: Any) {

        let alert = UIAlertController(title: "Reset Timer? ",
                                      message: "Вы хотите все снова начать ? ",
                                      preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { (_) in
        }))

        alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { (_) in
            self.count = 0
            self.timer.invalidate()
            self.timerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
            self.startButton.setTitle("START", for: .normal)
            self.startButton.setTitleColor(UIColor.green, for: .normal)

        }))
            self.present(alert, animated: true, completion: nil)
    }

//START Tapped
    @IBAction func startTapped(_ sender: Any) {

        if (timerCouting) {

            timerCouting = false
            timer.invalidate()
            startButton.setTitle("START", for: .normal)
            startButton.setTitleColor(UIColor.green, for: .normal)
        } else {

            timerCouting = true
            startButton.setTitle("STOP", for: .normal)
            startButton.setTitleColor(UIColor.red, for: .normal)
            timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                         selector: #selector(timerCounter),
                                         userInfo: nil,
                                         repeats: true)
        }
    }

//MARK: - Private Functions

    @objc private func timerCounter() -> () {
        count = count + 1
        let time = secundsHoursMinutesSeconds(seconds: count)
        let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
        timerLabel.text = timeString
    }

    private func secundsHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int){
        return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
    }

    private func makeTimeString (hours: Int, minutes: Int, seconds: Int) -> String {
        var timeString = ""
        timeString += String(format: "%02d", hours)
        timeString += " : "
        timeString += String(format: "%02d", minutes)
        timeString += " : "
        timeString += String(format: "%02d", seconds)
        return timeString
    }
}

