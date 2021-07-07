//
//  ViewController.swift
//  13_UITextField123
//
//  Created by admin on 07.07.2021.
//

import UIKit

class RegistrationVC1: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var firstTextField: UITextField!


    @IBOutlet weak var secondTextField: UITextField!

    @IBOutlet weak var thirdTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstTextField.delegate = self
        secondTextField.delegate = self
        thirdTextField.delegate = self

    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == firstTextField{
            firstTextField.resignFirstResponder()
            secondTextField.becomeFirstResponder()
        } else if textField == secondTextField {
            secondTextField.resignFirstResponder()
            thirdTextField.becomeFirstResponder()
        } else if textField == thirdTextField {
            thirdTextField.resignFirstResponder()
        }
        return true
    }

}

