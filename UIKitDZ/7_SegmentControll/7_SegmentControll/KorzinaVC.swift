//
//  KorzinaVC.swift
//  7_SegmentControll
//
//  Created by admin on 29.06.2021.
//

import UIKit

class KorzinaVC: UIViewController {

    var text = ""
    var nameLabel =  UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Korzina"
        view.backgroundColor = .systemTeal
        nameLabel.text = text
        nameLabel.frame = CGRect(x: 100, y: 100, width: 100, height: 30)
        view.addSubview(nameLabel)
    }

}
