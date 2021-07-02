//
//  ViewController.swift
//  9_10_UINavigationViewController
//
//  Created by admin on 30.06.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
 
//MARK: Visual Components
    
    var imageView = UIImageView()
    var imageView2 = UIImageView()
    
    // Email Elements
    var emailLabel = UILabel()
    var emailTextFild = UITextField()
    var emailView = UIView()
        
    // Password Elements
    var passwordLabel = UILabel()
    var passwordTextFild = UITextField()
    var passwordView = UIView()
    
    //Button Enter
    var enterButton = UIButton()
    
//MARK: Public Properties
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGray6
        
        imageView.frame = CGRect(x: 120, y: 80, width: 150, height: 150)
        imageView.image = UIImage(named: "image")
        self.view.addSubview(imageView)
        
        //Email Elements
        
        emailLabel.frame = CGRect(x: 25, y: 250, width: 150, height: 30)
        emailLabel.text = "Email"
        emailLabel.textAlignment = .left
        emailLabel.textColor = .systemBlue
        emailLabel.font = UIFont.boldSystemFont(ofSize: 15)
        self.view.addSubview(emailLabel)
        
        emailTextFild.frame = CGRect(x: 25, y: 280, width: 300, height: 30)
        emailTextFild.textAlignment = .left
        self.emailTextFild.keyboardType = .numberPad
        emailTextFild.placeholder = "Введите логин"
        passwordTextFild.clearsOnBeginEditing = true
        self.emailTextFild.delegate = self
        self.view.addSubview(emailTextFild)
        
        emailView.frame = CGRect(x: 25, y: 310, width: 320, height: 1)
        emailView.backgroundColor = .gray
        view.addSubview(emailView)
        
        //Password Elements
         
        passwordLabel.frame = CGRect(x: 25, y: 360, width: 150, height: 30)
        passwordLabel.text = "Password"
        passwordLabel.textAlignment = .left
        passwordLabel.textColor = .systemBlue
        passwordLabel.font = UIFont.boldSystemFont(ofSize: 15)
        self.view.addSubview(passwordLabel)
        
        passwordTextFild.frame = CGRect(x: 25, y: 390, width: 300, height: 30)
        passwordTextFild.textAlignment = .left
        passwordTextFild.placeholder = "Напишите пароль"
        passwordTextFild.clearsOnBeginEditing = true
        passwordTextFild.keyboardType = .numberPad
        passwordTextFild.isSecureTextEntry = true
        self.view.addSubview(passwordTextFild)
        
        passwordView.frame = CGRect(x: 25, y: 420, width: 320, height: 1)
        passwordView.backgroundColor = .gray
        self.view.addSubview(passwordView)
        
        //Enter Button
        
        enterButton.frame = CGRect(x: 85, y: 550, width: 200, height: 50)
        enterButton.setTitle("Войти", for: .normal)
        enterButton.layer.cornerRadius = 15
        enterButton.backgroundColor = .systemBlue
        enterButton.setTitleColor(.white, for: .normal)
        enterButton.addTarget(self, action: #selector(tapInButton), for: .touchUpInside)
        self.view.addSubview(enterButton)
        
        imageView2.frame = CGRect(x: 30, y: 450, width: 100, height: 50 )
        imageView2.image = UIImage(named: "social")
        self.view.addSubview(imageView2)
    
    }
    
    //MARK: Methods
    
    @objc func tapInButton(){
        let rootVC = MenuViewController()
        let navigationVC = UINavigationController(rootViewController: rootVC)
        navigationVC.modalPresentationStyle = .fullScreen
        present(navigationVC, animated: true, completion: nil)
    
    }
    
    //MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.emailTextFild.resignFirstResponder()
        
        return true
    }


}

