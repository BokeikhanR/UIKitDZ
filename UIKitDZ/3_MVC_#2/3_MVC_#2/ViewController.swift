//
//  ViewController.swift
//  3_MVC_#2
//
//  Created by admin on 23.06.2021.
// 5 Создать второе приложение MVC у которого на экране будет кнопка "начать" которая вызывает Алерт с сообщением "введите слово"

import UIKit

class ViewController: UIViewController {
    
//Model
    var button = Configuration()
    
    // 5 Создать второе приложение MVC у которого на экране будет кнопка "начать" которая вызывает Алерт с сообщением "введите слово"
//VIEW
    let label = UILabel(frame: CGRect(x: 100, y: 285, width: 200, height: 50))
    let buttonBegin = UIButton(frame: CGRect(x: 100, y: 350, width: 200, height: 55))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonBegin.backgroundColor = .blue
        buttonBegin.setTitle("Начать", for: .normal)
        buttonBegin.addTarget(self, action: #selector(nachat), for: .touchUpInside)
        view.addSubview(buttonBegin)
        
       
        label.textAlignment = .center
        label.backgroundColor = .blue
        label.textColor = .white
        view.addSubview(label)
        
    }
//  6 Нужно ввести "leohl" в Алерт нажимаете "ок" отдаете контролеру а контролер отдаст это в модель которая из буквосочетания "leohl" вернет слово "hello" контролеру а контролер отдаст это лейблу и отобразит это на экране
    //MARK: - Method :
 
    @objc func nachat(){
        
        let alertAction = UIAlertController(title: " Внимание", message: "Введите слово", preferredStyle: .alert)
        let warningAction = UIAlertAction(title: "Ok", style: .default) { (warinigAction) in
            
        let text = alertAction.textFields?.first
            self.button.name = text!.text!
            
            self.button.buttonNachat(name: self.button.name)
            self.label.text = self.button.newName
        }
        
        alertAction.addTextField(configurationHandler: nil)
        alertAction.addAction(warningAction)
        self.present(alertAction, animated: true, completion: nil)
    }
}



