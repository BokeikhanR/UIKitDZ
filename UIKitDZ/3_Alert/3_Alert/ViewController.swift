//  ViewController.swift
//  3_Alert
//
//  Created by admin on 22.06.2021.
//

import UIKit

class ViewController: UIViewController {

//  2 При попадании на этот экран запрашивать ФИО через алер и отображать в UILabel
    
    var labelFullname: UILabel!
    let buttonAddition = UIButton(frame: CGRect(x: 90, y: 300, width: 110, height: 50))
    let buttonGuisNumber = UIButton(frame: CGRect(x: 210, y: 300, width: 120, height: 50))
    
    override func viewDidAppear(_ animated: Bool) {
        
        let alertController = UIAlertController(title: "Внимание", message: "Напишите ФИО" , preferredStyle: .alert)
        let action = UIAlertAction(title: "Отправить", style: .default) { (action) in
        let text = alertController.textFields?.first
            self.labelFullname.text! += (text?.text)!
        }
        
        alertController.addTextField(configurationHandler: nil)
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
// 1.Написать свое мини приложение на первом экранедве кнопки "сложение" и "угадай число"
        
        labelFullname = UILabel(frame: CGRect(x: 100, y: 220, width: 250, height: 40))
        labelFullname.text = "Введите ФИО: "
        labelFullname.textAlignment = .center
        labelFullname.textColor = .red
        labelFullname.backgroundColor = UIColor.gray
        self.view.addSubview(labelFullname)
        
        buttonAddition.backgroundColor = .blue
        buttonAddition.setTitle("сложение", for: .normal)
        buttonAddition.addTarget(self, action: #selector(buttonAddition1(sender:)), for: .touchUpInside)
        self.view.addSubview(buttonAddition)
        
    
        buttonGuisNumber.backgroundColor = .green
        buttonGuisNumber.setTitle("Угадай число", for: .normal)
        buttonGuisNumber.addTarget(self, action: #selector(buttonGuisNumber2(param:)), for: .touchUpInside)
        self.view.addSubview(buttonGuisNumber)
    
    }

    //MARK: - Method
    
//3 По нажатию на "сложение" открывать Алерт который просит ввести число 1 и число 2 и кнопка посчитать выводит результат в любом виде юзеру
    
    @objc func buttonAddition1(sender: UIButton!){
        
        let alertAction = UIAlertController(title: "Внимание", message: "Напишите цифры", preferredStyle: .alert)
        let additionAction = UIAlertAction(title: "ok", style: .default) { (additionAction) in
            
            let textOne = alertAction.textFields?.first?.text
            let textTwo = alertAction.textFields?.last?.text
            if let number1 = Int(textOne!), let number2 = Int(textTwo!) {
                let summa = number1 + number2
                self.labelFullname.text! = String(summa)
            }
     }
        
    alertAction.addTextField { (textOne) in }
    alertAction.addTextField { (textTwo) in }
        
    alertAction.addAction(additionAction)
    self.present(alertAction, animated: true, completion: nil)
    
    }
   
    
    @objc func buttonGuisNumber2(param: UIButton!){
        let alertNumber = UIAlertController(title: "Warning", message: "Naity sifri ot 1 do 3 ", preferredStyle: .alert)
        let actionGues = UIAlertAction(title: "Ok", style: .default) { (actionGues) in
            
            let number = alertNumber.textFields?.first?.text
            if number == "2"{
                self.labelFullname.text = "Win !!!"
            } else {
                self.labelFullname.text = "Error !!!"
            }
            
        }
        alertNumber.addTextField { (textOne) in }
        alertNumber.addAction(actionGues)
        self.present(alertNumber, animated: true, completion: nil)
       
    }

}

