//
//  TimerViewController.swift
//  11_UITabBarController
//
//  Created by admin on 02.07.2021.
//

import UIKit
  
//MARK: View Configuration


final class TimerViewController: UIViewController {

    //Picker View Outlet
    
    @IBOutlet var pickerView: UIPickerView!
    
    // Properties
    
     private var hour = 0
     private var minutes = 0
     private var second = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.setValue(UIColor.white, forKey: "textColor")
    }
}

//MARK: Extension

//Component Number
extension TimerViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        3
    }
}

//Component Views

extension TimerViewController: UIPickerViewDelegate{

    //View Names
    
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
    
    //View times
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
}

