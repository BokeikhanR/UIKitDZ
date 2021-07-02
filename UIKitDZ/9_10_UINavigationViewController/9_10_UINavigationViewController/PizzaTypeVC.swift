//
//  PizzaTypeVC.swift
//  9_10_UINavigationViewController
//
//  Created by admin on 01.07.2021.
//

import UIKit


protocol Til: AnyObject {
    func gotoBack()
}


// MARK: Visual components

class PizzaTypeVC: UIViewController {
    
    var pizzaImageView = UIImageView()
    var pizzaNameTextField = UITextField()
    var pizzaNameLabel = UILabel()
    
   // weak var delegate: Til?
    
    var sirLabel = UILabel()
    var vetshinaLabel = UILabel()
    var gribiLabel = UILabel()
    var masliniLabel = UILabel()
    
    var sirSwitch = UISwitch()
    var vatshinaSwitch = UISwitch()
    var gribiSwitch = UISwitch()
    var maslinaSwitch = UISwitch()

    var payButton = UIButton()
    
    //MARK: View Configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Image View Pizza
        
        pizzaImageView.frame = CGRect(x: 35, y: 100, width: 320, height: 220)
        view.addSubview(pizzaImageView)
        
        view.backgroundColor = .white
    
        //Pizza textField
        pizzaNameTextField.frame = CGRect(x: 110, y: 40, width: 200, height: 50)
        pizzaNameTextField.textColor = .systemBlue
        pizzaNameTextField.font = UIFont.boldSystemFont(ofSize: 35)
        view.addSubview(pizzaNameTextField)
        
        //Ingruident number1
        
        sirLabel.frame = CGRect(x: 30, y: 350, width: 150, height: 30)
        sirLabel.text = "Сыр мацарелла"
        sirLabel.textColor = .systemBlue
        sirLabel.textAlignment = .left
        view.addSubview(sirLabel)
        
        sirSwitch.frame = CGRect(x: 300, y: 350, width: 0, height: 0)
        sirSwitch.isOn = false
        view.addSubview(sirSwitch)
        
        //Ingruident number 2
        
        vetshinaLabel.frame = CGRect(x: 30, y: 400, width: 150, height: 30)
        vetshinaLabel.text = "Ветчина"
        vetshinaLabel.textColor = .systemBlue
        vetshinaLabel.textAlignment = .left
        view.addSubview(vetshinaLabel)
        
        vatshinaSwitch.frame = CGRect(x: 300, y: 400, width: 0, height: 0)
        vatshinaSwitch.isOn = false
        view.addSubview(vatshinaSwitch)
        
        //Ingruident number 3
        
        gribiLabel.frame = CGRect(x: 30, y: 450, width: 150, height: 30)
        gribiLabel.text = "Грибы"
        gribiLabel.textColor = .systemBlue
        gribiLabel.textAlignment = .left
        view.addSubview(gribiLabel)
        
        gribiSwitch.frame = CGRect(x: 300, y: 450, width: 0, height: 0)
        gribiSwitch.isOn = false
        view.addSubview(gribiSwitch)
        
        //Ingruident number4
        
        masliniLabel.frame = CGRect(x: 30, y: 500, width: 150, height: 30)
        masliniLabel.text = "Маслины"
        masliniLabel.textColor = .systemBlue
        masliniLabel.textAlignment = .left
        view.addSubview(masliniLabel)
        
        maslinaSwitch.frame = CGRect(x: 300, y: 500, width: 0, height: 0)
        maslinaSwitch.isOn = false
        view.addSubview(maslinaSwitch)
        
        //Button
        
        payButton.frame = CGRect(x: 65, y: 550, width: 250, height: 40)
        payButton.setTitle("Выбрать", for: .normal)
        payButton.layer.cornerRadius = 15
        payButton.backgroundColor = .systemBlue
        payButton.setTitleColor(.white, for: .normal)
        payButton.addTarget(self, action: #selector(viborButton), for: .touchUpInside)
        view.addSubview(payButton)
        
    }
    
    //MARK: Methods
    
    @objc func viborButton(param: UIButton){
        
        let payVC = PayViewController()
        payVC.delegate = self
        let newVC = UINavigationController(rootViewController: payVC)
        newVC.modalPresentationStyle = .fullScreen
        present(newVC, animated: true, completion: nil)
        
        
        payVC.namePizza.text = pizzaNameTextField.text
        
        if sirSwitch.isOn == true {
            payVC.nameSir.text = sirLabel.text
        }; if vatshinaSwitch.isOn == true {
            payVC.nameVetshina.text = vetshinaLabel.text
        }; if gribiSwitch.isOn == true {
            payVC.nameGribi.text = gribiLabel.text
        }; if maslinaSwitch.isOn == true {
            payVC.nameMaslini.text = masliniLabel.text
        } else { return }
        
        
        
    }
    
}

extension PizzaTypeVC: Til {
    func  gotoBack() {
        if let vc = self.presentingViewController as? UINavigationController {
            dismiss(animated: true)
            vc.popToRootViewController(animated: true)
        }
    }
}
