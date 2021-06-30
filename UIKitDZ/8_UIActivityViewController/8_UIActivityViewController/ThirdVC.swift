//
//  ThirdVC.swift
//  8_UIActivityViewController
//
//  Created by admin on 29.06.2021.
//

import UIKit

class ThirdVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func burgerButton(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
    @IBAction func chikenButton(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
    @IBAction func donerButton(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
    @IBAction func bagetButton(_ sender: Any) {
        let newVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
        navigationController?.pushViewController(newVC!, animated: true)
    }
    
//    @IBAction func gotoSecond(_ sender: UIButton) {
//        let newVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC")
//        navigationController?.pushViewController(newVC!, animated: true)
//    }
    
}
