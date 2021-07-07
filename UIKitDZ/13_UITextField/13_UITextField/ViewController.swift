//
//  ViewController.swift
//  13_UITextField
//
//  Created by admin on 07.07.2021.
//

import UIKit

final class RegistrationViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var fullNameTextField: UITextField!

    @IBOutlet weak var emeilTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.createView()
        self.settingNotification()
    }

//MARK: - Methods

    func createView(){

        fullNameTextField.delegate = self
        emeilTextField.delegate = self
        passwordTextField.delegate = self
    }

//MARK: - Notifications
    func settingNotification(){

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification,
                                               object: nil, queue: nil) { (param) in
            self.view.frame.origin.y = -200
        }

        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification,
                                               object: nil, queue: nil) { (param) in
            self.view.frame.origin.y = 0
        }
    }

//Text Field Methods

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == fullNameTextField{
            fullNameTextField.resignFirstResponder()
            emeilTextField.becomeFirstResponder()
        } else if textField == emeilTextField{
            emeilTextField.resignFirstResponder()
            passwordTextField.becomeFirstResponder()
        } else if textField == passwordTextField{
            passwordTextField.resignFirstResponder()
        }
        return true
    }

}

