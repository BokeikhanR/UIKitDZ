//
//  SamsungVC.swift
//  7_SegmentControll
//
//  Created by admin on 28.06.2021.
//

import UIKit

class SamsungVC: UIViewController, UIPickerViewDelegate {

    //Labels
    var stoimostLabel = UILabel()
    var shtuctLabel = UILabel()
    var svetLabel = UILabel()
    var oplataLabel = UILabel()
    var switchOplata = UISwitch()
    var senaLabel = UILabel()
    
    var segmentControll = UISegmentedControl()
    var buttonBack = UIButton()
    var imageView = UIImageView()
    var korzinaButton = UIButton()
    
    var pickerShtuc = UIPickerView()
    var arrayShtuc = [0,1,2,3,4,5,6,7,8,9,10]
    
    var textFieldShtuc = UITextField()
    
    var menuArray = ["1", "2", "3"]
    var imageArray = [UIImage(named: "Samsung1"),
                      UIImage(named: "Samsung2"),
                      UIImage(named: "Samsung3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Samsung"
        
        textFieldShtuc.frame = CGRect(x: 230, y: 605, width: 150, height: 30)
        textFieldShtuc.placeholder = "Введите количество"
        textFieldShtuc.textAlignment = .center
        textFieldShtuc.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldShtuc.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldShtuc.inputView = pickerShtuc
        view.addSubview(textFieldShtuc)
        
        
        
        //Image
        imageView.frame = CGRect(x: 80, y: 150, width: 250, height: 250)
        imageView.image = imageArray[2]
        imageView.backgroundColor = .systemBlue
        view.addSubview(imageView)
        
        
        //Segment Controll
        self.segmentControll = UISegmentedControl(items: self.menuArray)
        segmentControll.frame = CGRect(x:  230, y: 650, width: 150, height: 30)
        view.addSubview(segmentControll)
        
        segmentControll.addTarget(self, action: #selector(selectedValue(target:)), for: .valueChanged)
        
        createPickerAge()
        
        //Labels
        
        stoimostLabel.frame = CGRect(x: 15, y: 550, width: 250, height: 40)
        stoimostLabel.text = "Стоимость : "
        stoimostLabel.textColor = .black
        stoimostLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(stoimostLabel)
        
        shtuctLabel.frame = CGRect(x: 15, y: 600, width: 250, height: 40)
        shtuctLabel.text = "Количество : "
        shtuctLabel.textColor = .black
        shtuctLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(shtuctLabel)
        
        svetLabel.frame = CGRect(x: 15, y: 650, width: 250, height: 40)
        svetLabel.text = "Выберите цвет : "
        svetLabel.textColor = .black
        svetLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(svetLabel)
        
        oplataLabel.frame = CGRect(x: 15, y: 700, width: 250, height: 40)
        oplataLabel.text = "Предоплата : "
        oplataLabel.textColor = .black
        oplataLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(oplataLabel)
        
        switchOplata.frame = CGRect(x: 270, y: 705, width: 0, height: 0)
        switchOplata.isOn = false
        view.addSubview(switchOplata)
        
        senaLabel.frame = CGRect(x: 230, y: 550, width: 250, height: 40)
        senaLabel.text = "250k Tenge "
        senaLabel.textColor = .black
        senaLabel.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(senaLabel)
        
        //Button Korzina
        
        korzinaButton.frame = CGRect(x: 150, y: 750, width: 100, height: 40)
        korzinaButton.setTitle("Корзина", for: .normal)
        korzinaButton.backgroundColor = .systemBlue
        korzinaButton.layer.cornerRadius = 15
        korzinaButton.addTarget(self, action: #selector(korzinaBut), for: .touchUpInside)
        view.addSubview(korzinaButton)
    }
    
    @objc func korzinaBut() {
        let vc1 = KorzinaVC()
        self.navigationController?.pushViewController(vc1, animated: true)
    }
    
    
    
    func createPickerAge(){
        let toolBar = UIToolbar()
                 toolBar.sizeToFit()

                 let donButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
                 toolBar.setItems([donButton], animated: true)
                 textFieldShtuc.inputAccessoryView = toolBar

                 pickerShtuc.tag = 0
                 pickerShtuc.backgroundColor = .white
                 pickerShtuc.tintColor = .blue
                 pickerShtuc.delegate = self
                 pickerShtuc.dataSource = self
    }
    
    @objc func donePress() {
        textFieldShtuc.text = "\(pickerShtuc.selectedRow(inComponent: 0))"
             self.view.endEditing(true)
         }
    

    
    @objc func selectedValue(target: UISegmentedControl){
        if target == segmentControll {
            let segmentIndex = target.selectedSegmentIndex
            imageView.image = imageArray[segmentIndex]
        }
    }
    
    
    
    
    
}

extension SamsungVC: UIPickerViewDataSource, UIPrinterPickerControllerDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    
        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            if pickerView.tag == 0 {
                return arrayShtuc.count
            } else {
                return 2
            }
        }
    
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            if pickerView.tag == 0 {
                return "\(arrayShtuc[row])"
            } else {
                return "nil"
            }
        }
    }



