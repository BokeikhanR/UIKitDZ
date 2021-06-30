//
//  ViewController.swift
//  8_UIActivityViewController
//
//  Created by admin on 29.06.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonEnter(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "ThirdVC")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
}

