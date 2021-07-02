//
//  PayViewController.swift
//  9_10_UINavigationViewController
//
//  Created by admin on 01.07.2021.
//

import UIKit

class PayViewController: UIViewController {

    var zakazLabel = UILabel()
    var namePizzaLabel = UILabel()
    var nameIngruidentLabel = UILabel()
    
    var namePizza = UITextField()
    
    var nameSir = UILabel()
    var nameVetshina = UILabel()
    var nameGribi = UILabel()
    var nameMaslini = UILabel()
    
    var oplataKarta = UILabel()
    var oplataNal = UILabel()
    
    var kartaSwitch = UISwitch()
    var nalSwitch = UISwitch()
    
    var payButton = UIButton()
    
    weak var delegate: Til?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        self.title = "Оплата"
        
        namePizzaLabel.frame = CGRect(x: 20, y: 200, width: 200, height: 40)
        namePizzaLabel.font = UIFont.boldSystemFont(ofSize: 20)
        namePizzaLabel.text = "Пицца :"
        namePizzaLabel.textColor = .gray
        view.addSubview(namePizzaLabel)
        
        nameIngruidentLabel.frame = CGRect(x: 20 , y: 300, width: 250, height: 40)
        nameIngruidentLabel.textColor = .gray
        nameIngruidentLabel.font = UIFont.boldSystemFont(ofSize: 20)
        nameIngruidentLabel.text = "Ингруиденты : "
        view.addSubview(nameIngruidentLabel)
        
        zakazLabel.frame = CGRect(x: 20, y: 130, width: 150, height: 40)
        zakazLabel.text = "Ваш заказ"
        zakazLabel.textAlignment = .left
        zakazLabel.textColor = .gray
        zakazLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(zakazLabel)
        
        //Name Pizza
        
        namePizza.frame = CGRect(x: 20, y: 250, width: 200, height: 40)
        namePizza.font = UIFont.boldSystemFont(ofSize: 30)
        namePizza.textColor = .gray
        view.addSubview(namePizza)
        
        //name Sir
        
        nameSir.frame = CGRect(x: 20, y: 350, width: 250, height: 40)
        nameSir.textAlignment = .left
        nameSir.textColor = .gray
        nameSir.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(nameSir)
        
        //name Vetshina
        
        nameVetshina.frame = CGRect(x: 20, y: 400, width: 250, height: 40)
        nameVetshina.textAlignment = .left
        nameVetshina.textColor = .gray
        nameVetshina.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(nameVetshina)
        
        //name Gribi
        
        
        nameGribi.frame = CGRect(x: 20, y: 450, width: 250, height: 40)
        nameGribi.textAlignment = .left
        nameGribi.textColor = .gray
        nameGribi.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(nameGribi)
        
        //name Maslini
        
        nameMaslini.frame = CGRect(x: 20, y: 500, width: 250, height: 40)
        nameMaslini.textAlignment = .left
        nameMaslini.textColor = .gray
        nameMaslini.font = UIFont.boldSystemFont(ofSize: 30)
        view.addSubview(nameMaslini)
        
        //PAY Button
        payButton.frame = CGRect(x: 70, y: 700, width: 250, height: 40)
        payButton.backgroundColor = .black
        payButton.setTitle(" Pay", for: .normal)
        payButton.layer.cornerRadius = 10
        payButton.setTitleColor(.white, for: .normal)
        payButton.setImage(UIImage(systemName: "applelogo"), for: .normal)
        payButton.setTitleColor(.white, for: .normal)
        payButton.addTarget(self, action: #selector(tappedPayButton), for: .touchUpInside)
        self.view.addSubview(payButton)
        
        oplataKarta.frame = CGRect(x: 40, y: 590, width: 200, height: 40)
        oplataKarta.text = "Оплата картой"
        oplataKarta.textColor = .gray
        view.addSubview(oplataKarta)
        
        
        oplataNal.frame = CGRect(x: 40, y: 630, width: 200, height: 40)
        oplataNal.text = "Оплата наличными"
        oplataNal.textColor = .gray
        view.addSubview(oplataNal)
        
        kartaSwitch.frame = CGRect(x: 300, y: 590, width: 0, height: 0)
        kartaSwitch.isOn = false
        view.addSubview(kartaSwitch)
        
        nalSwitch.frame = CGRect(x: 300, y: 630, width: 0, height: 0)
        nalSwitch.isOn = false
        view.addSubview(nalSwitch)
        
    }
    
    @objc func tappedPayButton(){
        let alertController = UIAlertController(title: "Заказ оплачен!!!", message: "Ваш заказ доставят в течение 15 мин!!! Приятного аппетита.", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel, handler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)

        dismiss(animated: true)
        delegate?.gotoBack()
    }
}
