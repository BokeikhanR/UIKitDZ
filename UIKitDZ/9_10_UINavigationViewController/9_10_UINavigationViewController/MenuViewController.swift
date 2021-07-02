//
//  MenuViewController.swift
//  9_10_UINavigationViewController
//
//  Created by admin on 30.06.2021.
//

import UIKit

class MenuViewController: UIViewController {
    
    var pizzaButton = UIButton()
    var sushiButton = UIButton()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "Menu"
        
        pizzaButton.frame = CGRect(x: 40, y: 150, width: 300, height: 100)
        pizzaButton.setTitle("Пицца", for: .normal)
        pizzaButton.layer.cornerRadius = 30
        pizzaButton.backgroundColor = .systemBlue
        pizzaButton.setTitleColor(.white, for: .normal)
        pizzaButton.addTarget(self, action: #selector(tappedPizzaButton(param:)), for: .touchUpInside)
        self.view.addSubview(pizzaButton)
        
        sushiButton.frame = CGRect(x: 40, y: 300, width: 300, height: 100)
        sushiButton.setTitle("Суши", for: .normal)
        sushiButton.layer.cornerRadius = 30
        sushiButton.backgroundColor = .systemRed
        sushiButton.setTitleColor(.systemBlue, for: .normal)
        self.view.addSubview(sushiButton)
        
        
         
    }
    
    @objc func tappedPizzaButton(param: UIButton){
        let newVC = PizzaViewController()
        navigationController?.pushViewController(newVC, animated: true)
    }
    

}
