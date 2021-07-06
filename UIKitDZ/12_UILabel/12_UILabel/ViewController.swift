//
//  ViewController.swift
//  12_UILabel
//
//  Created by admin on 05.07.2021.
//

import UIKit

final class ViewPageVC: UIViewController {
   
    private var colorPicker = UIPickerView()
    private var linePicker = UIPickerView()
    private var myLabel = UILabel()
    private var mySlider = UISlider()
    private var colorArray = ["Yellow", "Blue","Red", "Green", "Indigo", "Orange"]
    private var lineArray = ["1", "2", "3", "4", "5", "6"]
    
    private var colorShadowPicker = UIPickerView()
    private var shadowColorArray = ["Gray", "Orange","Red", "Blue", "Yellow", "Green"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.configureSubviews()
    }

//MARK: - Methods
    
    private func configureSubviews(){
        //Label
        
        myLabel.frame = CGRect(x: 50, y: 100, width: 300, height: 100)
        myLabel.backgroundColor = .white
        myLabel.textAlignment = .left
        myLabel.numberOfLines = 0 //katar sani
        myLabel.lineBreakMode = .byWordWrapping //buinga sozben bolu
        myLabel.text = "Hello world .dm,fnlkj n;kjn;kj.m,n; kj,nkjmnsdfjkn lhbukhjb kjhbiuokhjd "
        myLabel.font = UIFont.boldSystemFont(ofSize: 25)
        myLabel.adjustsFontSizeToFitWidth = true //podgon razmera
        myLabel.sizeToFit() //pokozat vsez slov
        myLabel.textColor = .systemBlue
        myLabel.shadowColor = .systemGreen
        myLabel.shadowOffset = CGSize(width: 3, height: 3)
        self.view.addSubview(myLabel)
        
        //Title Page
        
        self.title = "Page 1"
        self.view.backgroundColor = .white
        
        //Bar Button Add
        
        var plusButton = UIBarButtonItem()
        plusButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(enterMethod))
        navigationItem.rightBarButtonItem = plusButton
        
        //Slider To Size
        
        mySlider.frame = CGRect(x: 50, y: 300, width: 250, height: 10)
        mySlider.maximumValue = 100.0
        mySlider.minimumValue = 0.0
        mySlider.value = 50
        mySlider.maximumTrackTintColor = .systemRed
        mySlider.minimumTrackTintColor = .systemGreen
        mySlider.addTarget(self, action: #selector(changeSlider(param:)), for: .valueChanged)
        view.addSubview(mySlider)
        
        //Shadow Picker
        
        colorShadowPicker.frame = CGRect(x: 250, y: 350, width: 100, height: 50)
        colorShadowPicker.dataSource = self
        colorShadowPicker.delegate = self
        self.view.addSubview(colorShadowPicker)
        
        //Color Picker
        
        colorPicker.frame = CGRect(x: 50, y: 350, width: 100, height: 50)
        colorPicker.dataSource = self
        colorPicker.delegate = self
        self.view.addSubview(colorPicker)
        
        //Line picker
        
        linePicker.frame = CGRect(x:150, y: 350, width: 100, height: 50)
        linePicker.dataSource = self
        linePicker.delegate = self
        self.view.addSubview(linePicker)
        
    }
  
    //Method change slider
    
    @objc private func changeSlider(param: UISlider){
        self.myLabel.font = UIFont.systemFont(ofSize:CGFloat(Int(param.value)))
    }
    
    
   
    //Method addButton and Alertcontroller
    
    @objc private func enterMethod(){
        let alertController = UIAlertController(title: "Введите текст", message: "", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default) { [self] (action) in
            let text = alertController.textFields?.first
            self.myLabel.text! = (text?.text)!
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(alertAction)
        present(alertController, animated: true, completion: nil)
    }
}

//MARK: - Extesion Picker View

extension ViewPageVC: UIPickerViewDataSource {
    
    // Method of Number Components
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }

    //Method of Number Rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView {
        case linePicker:
            return lineArray.count
        case colorPicker:
            return colorArray.count
        case colorShadowPicker:
            return shadowColorArray.count
        default:
            return 0
        }
    }
}

//MARK: - Extension Picker Delegate

extension ViewPageVC: UIPickerViewDelegate {
    
    // Method Picker names color
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        switch  pickerView {
        case colorPicker:
            switch row {
            case 0:
                self.myLabel.textColor = .yellow
            case 1:
                self.myLabel.textColor = .blue
            case 2:
                self.myLabel.textColor = UIColor(named: "AppRed")
            case 3:
                self.myLabel.textColor = UIColor(named: "AppGreen")
            case 4:
                self.myLabel.textColor = .systemIndigo
            case 5:
                self.myLabel.textColor = .systemOrange
            default:
                break
            }
        case colorShadowPicker:
            switch row {
            case 0:
                self.myLabel.shadowColor = .gray
            case 1:
                self.myLabel.shadowColor = .orange
            case 2:
                self.myLabel.shadowColor = .red
            case 3:
                self.myLabel.shadowColor = .blue
            case 4:
                self.myLabel.shadowColor = .yellow
            case 5:
                self.myLabel.shadowColor = .green
            default:
                break
            }
        case linePicker:
            self.myLabel.numberOfLines = row + 1
        default:
            break
    }
    
  }
    
    // Method Picker of numbers row
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        switch pickerView {
        case linePicker:
            return lineArray[row]
        case colorPicker:
            return colorArray[row]
        case colorShadowPicker:
            return shadowColorArray[row]
        default:
            return "0"
        }
    }
}
