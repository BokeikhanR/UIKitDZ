//
//  PizzaViewController.swift
//  9_10_UINavigationViewController
//
//  Created by admin on 30.06.2021.
//

import UIKit

class PizzaViewController: UIViewController {

    
    //MARK: Visual Components
    
    let imageViewPeperoni = UIImageView()
    var namePeperoniTextField = UITextField()
    var addPeperoniButton = UIButton()
    
    let imageViewMargarita = UIImageView()
    var nameMargaritaTextField = UITextField()
    var addMargaritaButton = UIButton()
    
    
    //MARK: View Configuration
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Pizza"
    
        // Create Peperoni
        
        imageViewPeperoni.image = UIImage(named: "peperoni")
        imageViewPeperoni.frame = CGRect(x: -20, y: 100, width: 200, height: 130)
        view.addSubview(imageViewPeperoni)
        
        
        namePeperoniTextField.frame = CGRect(x: 160, y: 150, width: 180, height: 50)
        namePeperoniTextField.text = "Пепперони"
        namePeperoniTextField.font = UIFont.boldSystemFont(ofSize: 25)
        namePeperoniTextField.textColor = .systemBlue
        view.addSubview(namePeperoniTextField)
        
        addPeperoniButton.frame = CGRect(x: 310, y: 157, width: 40, height: 40)
        addPeperoniButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addPeperoniButton.setTitleColor(.white, for: .normal)
        addPeperoniButton.backgroundColor = .systemBlue
        addPeperoniButton.layer.cornerRadius = 10
        addPeperoniButton.addTarget(self, action: #selector(tappadAdd(param:)), for: .touchUpInside)
        view.addSubview(addPeperoniButton)
       
        //Create Margarita
        
        imageViewMargarita.image = UIImage(named: "margarita")
        imageViewMargarita.frame = CGRect(x: 00, y: 280, width: 150, height: 150)
        view.addSubview(imageViewMargarita)
        
        nameMargaritaTextField.frame = CGRect(x: 160, y: 330, width: 180, height: 50)
        nameMargaritaTextField.text = "Маргарита"
        nameMargaritaTextField.font = UIFont.boldSystemFont(ofSize: 25)
        nameMargaritaTextField.textColor = .systemBlue
        view.addSubview(nameMargaritaTextField)
        
        addMargaritaButton.frame = CGRect(x: 310, y: 337, width: 40, height: 40)
        addMargaritaButton.setImage(UIImage(systemName: "plus"), for: .normal)
        addMargaritaButton.setTitleColor(.white, for: .normal)
        addMargaritaButton.backgroundColor = .systemBlue
        addMargaritaButton.layer.cornerRadius = 10
        addMargaritaButton.addTarget(self, action: #selector(tappadAdd1(param:)), for: .touchUpInside)
        view.addSubview(addMargaritaButton)
        
    }
    
    //MARK: Methods

    //Method first button
    
    @objc func tappadAdd(param: UIButton){
        
        let newVC = PizzaTypeVC()
        newVC.pizzaImageView.image = imageViewPeperoni.image
        newVC.pizzaNameTextField.text = namePeperoniTextField.text
        present(newVC, animated: true)
    
    }
    //Method second button
    
    @objc func tappadAdd1(param: UIButton){
        
        let newVC = PizzaTypeVC()
        newVC.pizzaImageView.image = imageViewMargarita.image
        newVC.pizzaNameTextField.text = nameMargaritaTextField.text
        present(newVC, animated: true)
    
    }
    

}
