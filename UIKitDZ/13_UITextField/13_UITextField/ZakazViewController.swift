//
//  ZakazViewController.swift
//  13_UITextField
//
//  Created by admin on 07.07.2021.
//

import UIKit

class ZakazViewController: UIViewController {

//MARK: - Var Elements

    var menuBurgerArray = [ UIImage(named: "Burger"),
                            UIImage(named: "Burger2"),
                            UIImage(named: "Burger3")]

    var menuSena = ["500", "750", "1000"]

//MARK: - Outleti

    @IBOutlet weak var textField: UITextField!

    @IBOutlet weak var razmerSegment: UISegmentedControl!
    
    @IBOutlet weak var oplataSwitch: UISwitch!

    @IBOutlet weak var chisloPicker: UIPickerView!

    @IBOutlet weak var imageView: UIImageView!

//MARK: - View Controller

    override func viewDidLoad() {
        super.viewDidLoad()

        self.viewElements()
    }

//MARK: - Methods

    func viewElements(){
        imageView.image = self.menuBurgerArray[0]
        chisloPicker.delegate = self
        chisloPicker.dataSource = self
        oplataSwitch.isOn = false
    }

//MARK: -IBActions

    @IBAction func zakazAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Ваш заказ принято, спасибо за покупку",
                                                message: "Ваш заказ будет готовы через 7мин",
                                                preferredStyle: .alert)

        let alertAction = UIAlertAction(title: "Ok", style: .default) { (action) in
        }

        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }

//Change segment Controll

    @IBAction func segmentAction(_ sender: UISegmentedControl) {
        razmerSegment.addTarget(self, action: #selector(changeSegment(param:)), for: .valueChanged)
        razmerSegment.addTarget(self, action: #selector(changeSen(sender:) ), for: .valueChanged)
    }
//Change Segment

    @objc func changeSegment(param: UISegmentedControl){
        if param == self.razmerSegment {
            let segmentIndex = param.selectedSegmentIndex
            self.imageView.image = self.menuBurgerArray[segmentIndex]
        }
    }

    @objc func changeSen(sender: UISegmentedControl){
        if sender == self.razmerSegment {
            let segmentIndex = sender.selectedSegmentIndex
            self.textField.text = self.menuSena[segmentIndex]

        }
    }
}

//MARK: -Extensions

//Picker Data Source

extension ZakazViewController: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }

    func pickerView(_ pickerView: UIPickerView,numberOfRowsInComponent component: Int) -> Int {
        10
    }
}

//Picker Delegate

extension ZakazViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int,
                    forComponent component: Int) -> String? {
        let result = "\(row)"
        return result
    }
}

//Text Field

extension ZakazViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == textField {
            textField.resignFirstResponder()
        }
        return true
    }
}
