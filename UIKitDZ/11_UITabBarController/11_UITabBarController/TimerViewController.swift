//
//  TimerViewController.swift
//  11_UITabBarController
//
//  Created by admin on 02.07.2021.
//

import UIKit
  
final class TimerViewController: UIViewController, UIPickerViewDelegate {

    @IBOutlet weak var pickerView: UIPickerView!
    
    
     private var hour: Int = 0
     private var minutes: Int = 0
     private var second: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.setValue(UIColor.white, forKey: "textColor")
        
    }


}

extension TimerViewController: UIDocumentPickerDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch component {
        case 0:
            return 25
        case 1,2:
            return 60
        default:
            return 0
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat{
        return pickerView.frame.size.width/3
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        switch component {
        case 0:
            return "\(row) ч"
            case 1:
                return "\(row) мин"
        case 2:
            return "\(row) сек"
        default:
            return ""
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch component {
        case 0:
            hour = row
        case 1:
            minutes = row
        case 2:
            second = row
        default:
            break;
        }
    }
}
