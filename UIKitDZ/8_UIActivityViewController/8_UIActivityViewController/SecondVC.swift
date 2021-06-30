//
//  SecondVC.swift
//  8_UIActivityViewController
//
//  Created by admin on 29.06.2021.
//

import UIKit

class SecondVC: UIViewController {
    
    var menuBurgerArray = [UIImage(named: "burger1.jpg"),
                           UIImage(named: "burger2.jpg"),
                           UIImage(named: "burger3.jpg")]
    
    var menuSen = ["400 тенге", "600 тенге", "800 тенге"]
    
    //Outleti
    @IBOutlet weak var shareButton: UIButton!
    
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    @IBOutlet weak var senaTextField: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var segmentControll: UISegmentedControl!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.imageView.image = self.menuBurgerArray[0]
        pickerView.dataSource = self
        pickerView.delegate = self
        switchButton.isOn = false
    
        
    }
    
    
    
    @IBAction func shareButton(_ sender: Any) {
        guard var image = imageView.image,
              let url = URL(string: "https://www.facebook.com"),
              let url1 = URL(string: "https://vk.com")
        else {
            return
        }
        
        let shareSheet = UIActivityViewController(activityItems: [image, url, url1],
                                                  applicationActivities: nil)
        shareSheet.popoverPresentationController?.sourceView = self.view
        self.present(shareSheet, animated: true, completion: nil)
        
    }
    
    @IBAction func zakazButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Спасибо вам за заказ", message: "Ваш заказ будет готова через 5мин ", preferredStyle: .alert)
        let action = UIAlertAction(title: "Ok", style: .cancel) { (action) in
            
        }
        
        alertController.addAction(action)
        present(alertController, animated: true, completion: nil)
    }
    //Segment controll
    @IBAction func segmentControll(_ sender: UISegmentedControl) {
        segmentControll.addTarget(self, action: #selector(changeSegment(param:)), for: .valueChanged)
        segmentControll.addTarget(self, action: #selector(changeSen(sender:)), for: .valueChanged)
    }
    
//Change Sigment
    @objc func changeSegment(param: UISegmentedControl){
        if param == self.segmentControll {
            let segmentIndex = param.selectedSegmentIndex
            self.imageView.image = self.menuBurgerArray[segmentIndex]
        }
    }
    @objc func changeSen(sender: UISegmentedControl){
        if sender == self.segmentControll{
            let segmentIndex2 = sender.selectedSegmentIndex
            self.senaTextField.text = self.menuSen[segmentIndex2]
        }
    }
    
    
}

extension SecondVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 20
    }
}
extension SecondVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let result = "\(row)"
        return result
    }
}
