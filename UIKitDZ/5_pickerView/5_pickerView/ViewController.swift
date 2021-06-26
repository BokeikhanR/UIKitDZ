//
//  ViewController.swift
//  5_pickerView
//
//  Created by admin on 24.06.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var labelBirthday = UILabel()
    var labelSignIn = UILabel()
    var labelLogin = UILabel()
    var labelPassword = UILabel()
    var buttonEnter = UIButton()
    var textFieldEmail = UITextField()
    var textFieldPassword = UITextField()
    var buttonEye = UIButton()
    var textFieldSwitch = UITextField()
    var switchButton = UISwitch()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    
        labelBirthday = UILabel(frame: CGRect(x: 90, y: 100, width: 200, height: 100))
        labelBirthday.layer.cornerRadius = 10
        labelBirthday.backgroundColor = .white
        labelBirthday.text = "Birthday Reminder"
        labelBirthday.textAlignment = .center
        labelBirthday.layer.borderWidth = 1
        labelBirthday.layer.borderColor = UIColor.black.cgColor
        labelBirthday.textColor = .systemBlue
        view.addSubview(labelBirthday)
        
        
        labelSignIn = UILabel(frame: CGRect(x: 60, y: 245, width: 150, height: 80))
        labelSignIn.text = "Sign In"
        labelSignIn.font = UIFont.boldSystemFont(ofSize: CGFloat(30))
        labelSignIn.textAlignment = .left
        labelSignIn.textColor = .systemGray
        view.addSubview(labelSignIn)
        
        
        labelLogin = UILabel(frame: CGRect(x: 60, y: 280, width: 200, height: 100))
        labelLogin.text = "Email"
        labelLogin.textAlignment = .left
        labelLogin.textColor = .systemBlue
        view.addSubview(labelLogin)
        
        textFieldEmail = UITextField(frame: CGRect(x: 60, y: 305, width: 250, height: 100))
        textFieldEmail.placeholder = "Напишите Email"
        textFieldEmail.textAlignment = .left
        textFieldEmail.textColor = .systemIndigo
        view.addSubview(textFieldEmail)
        
        
        
        labelPassword = UILabel(frame: CGRect(x: 60, y: 380, width: 100, height: 80))
        labelPassword.text = "Password"
        labelPassword.textAlignment = .left
        labelPassword.textColor = .systemBlue
        view.addSubview(labelPassword)
        
        textFieldPassword = UITextField(frame: CGRect(x: 60, y: 395, width: 250, height: 100))
        textFieldPassword.placeholder = "Напишите Password"ßß
        textFieldPassword.textAlignment = .left
        textFieldPassword.textColor = .systemIndigo
        textFieldPassword.isSecureTextEntry = true
        view.addSubview(textFieldPassword)
        
        buttonEye.frame = CGRect(x: 300, y: 395, width: 80, height: 100)
        buttonEye.setImage(UIImage(systemName: "eye.circle"), for: .normal)
        buttonEye.setImage(UIImage(systemName: "eye.circle.fill"), for: .normal)
        buttonEye.tintColor = .systemGray
        view.addSubview(buttonEye)
        
        textFieldSwitch.frame = CGRect(x: 120, y: 500, width: 180, height: 50)
        textFieldSwitch.text = "Вход через Face ID"
        textFieldSwitch.textColor = .systemIndigo
        view.addSubview(textFieldSwitch)
        
      
        switchButton.frame = CGRect(x: 290, y: 507, width: 0, height: 0)
        switchButton.isOn = true
        view.addSubview(switchButton)
        
        buttonEnter = UIButton(frame: CGRect(x: 60, y: 600, width: 260, height: 50))
        buttonEnter.setTitle("Bойти", for: .normal)
        buttonEnter.layer.cornerRadius = 10
        buttonEnter.backgroundColor = .systemBlue
        buttonEnter.addTarget(self, action: #selector(tapButtonEnter), for: .touchUpInside)
        view.addSubview(buttonEnter)
    
    }

    @objc func tapButtonEnter(){
        let vc = BirthdayViewController()
        self.navigationController?.pushViewController(vc, animated: true)
//        let birthdayVC = UINavigationController(rootViewController: vc)
//        birthdayVC.modalPresentationStyle = .fullScreen
//        present(birthdayVC, animated: true)
    }
}




//MARK: - BirthdayViewController



class BirthdayViewController: UIViewController{
    
    var labelName = UILabel()
    var labelMaria = UILabel()
    var labelJony = UILabel()
    var textField1 = UITextField()
    var textFielD2 = UITextField()
    var textField3 = UITextField()
    var lineName = UIView()
    var lineName2 = UIView()
    var lineName3 = UIView()
    
    var text1 = UITextField()
    var text2 = UITextField()
    var text3 = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let personFirst = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        personFirst.frame = CGRect(x: 15, y: 120, width: 60, height: 60)
        personFirst.tintColor = .systemGray
        self.view.addSubview(personFirst)
        
        labelName = UILabel(frame: CGRect(x: 80, y: 125, width: 100, height: 30))
        labelName.text = "Jeremy"
        labelName.font = UIFont.boldSystemFont(ofSize: CGFloat(25))
        labelName.textAlignment = .left
        labelName.textColor = .black
        view.addSubview(labelName)
        
        textField1 = UITextField(frame: CGRect(x: 80, y: 155, width: 300, height: 20))
        textField1.text = "10 марта, исполнится 25 лет"
        textField1.textAlignment = .left
        textField1.textColor = .systemIndigo
        view.addSubview(textField1)
        
        lineName.frame = CGRect(x: 20, y: 185, width: 340, height: 1)
        lineName.backgroundColor = .gray
        view.addSubview(lineName)
        
        text1.frame = CGRect(x: 290, y: 130, width: 100, height: 20)
        text1.text = "18 дней"
        text1.textAlignment = .left
        text1.textColor = .black
        view.addSubview(text1)
        
        let personSecond = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        personSecond.frame = CGRect(x: 15, y: 200, width: 60, height: 60)
        personSecond.tintColor = .systemGray
        self.view.addSubview(personSecond)
        
        labelMaria = UILabel(frame: CGRect(x: 80, y: 205, width: 200, height: 40))
        labelMaria.text = "Maria Lui"
        labelMaria.font = UIFont.boldSystemFont(ofSize: CGFloat(25))
        labelMaria.textAlignment = .left
        labelMaria.textColor = .black
        view.addSubview(labelMaria)
        
        textFielD2 = UITextField(frame: CGRect(x: 80, y: 235, width: 350, height: 30))
        textFielD2.text = "30 марта, исполнится 20 лет"
        textFielD2.textAlignment = .left
        textFielD2.textColor = .systemIndigo
        view.addSubview(textFielD2)
        
        
        lineName2.frame = CGRect(x: 20, y: 270, width: 340, height: 1)
        lineName2.backgroundColor = .gray
        view.addSubview(lineName2)
        
        text2.frame = CGRect(x: 290, y: 215, width: 100, height: 20)
        text2.text = "28 дней"
        text2.textAlignment = .left
        text2.textColor = .black
        view.addSubview(text2)
        
        let person3 = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        person3.frame = CGRect(x: 15, y: 295, width: 60, height: 60)
        person3.tintColor = .systemGray
        self.view.addSubview(person3)
        
        labelJony = UILabel(frame: CGRect(x: 80, y: 300, width: 200, height: 40))
        labelJony.text = "Jony Stark"
        labelJony.font = UIFont.boldSystemFont(ofSize: CGFloat(25))
        labelJony.textAlignment = .left
        labelJony.textColor = .black
        view.addSubview(labelJony)
        
        textField3 = UITextField(frame: CGRect(x: 80, y: 330, width: 350, height: 30))
        textField3.text = "20 апреля, исполнится 30 лет"
        textField3.textAlignment = .left
        textField3.textColor = .systemIndigo
        view.addSubview(textField3)

        lineName3.frame = CGRect(x: 20, y: 360, width: 340, height: 1)
        lineName3.backgroundColor = .gray
        view.addSubview(lineName3)
        
        text3.frame = CGRect(x: 290, y: 310, width: 100, height: 20)
        text3.text = "49 дней"
        text3.textAlignment = .left
        text3.textColor = .black
        view.addSubview(text3)
        
        
        
        view.backgroundColor = .white
        title = "Birthday"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(dismissSelf))

        
   }
    
    @objc private func dismissSelf() {
        
        let rootVC2 = InstagrammViewController()
//        rootVC2.view.backgroundColor = .white
//        navigationController?.pushViewController(rootVC2, animated: true)
        let instagrammVC = UINavigationController(rootViewController: rootVC2)
        instagrammVC.modalPresentationStyle = .fullScreen
        present(instagrammVC, animated: true, completion: nil)
        
    }
}



//MARK: - InstagrammViewController

class InstagrammViewController: UIViewController{
    
    let datePicker = UIDatePicker()
    
    var textAdd = UITextView()
    var textChangePhoto = UITextField()
    var textName = UILabel()
    var textDate = UILabel()
    var textAge = UILabel()
    var textSex = UILabel()
    var textInstagram = UILabel()
    
    var textFieldName = UITextField()
    var textFieldDate = UITextField()
    var textFieldAge = UITextField()
    var textFieldSex = UITextField()
    var textFieldInstagram = UITextField()
    
    var lineName = UIView()
    var lineDate = UIView()
    var lineAge = UIView()
    var lineSex = UIView()
    var lineInstagram = UIView()
    
    var pickerDateBirth = UIDatePicker()
    var pickerAge = UIPickerView()
    var pickerSex = UIPickerView()
    let arrayAge = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let arraySex = ["man", "woman"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let person = UIImageView(image: UIImage(systemName: "person.crop.circle.fill"))
        person.frame = CGRect(x: 130 , y: 100, width: 120, height: 120)
        person.tintColor = .systemGray
        self.view.addSubview(person)
        
        textChangePhoto.frame = CGRect(x: 130, y: 220, width: 200, height: 30)
        textChangePhoto.text = "Изменить фото"
        view.addSubview(textChangePhoto)
        textChangePhoto.textAlignment = .left
        textChangePhoto.textColor = .systemBlue
        
//Name sector
        
        textName.frame = CGRect(x: 20, y: 280, width: 100, height: 30)
        textName.text = "Имя"
        textName.textAlignment = .left
        textName.textColor = .systemBlue
        view.addSubview(textName)
        
        textFieldName.frame = CGRect(x: 20, y: 310, width: 200, height: 30)
        textFieldName.placeholder = "Введите имя"
        textFieldName.textAlignment = .left
        textFieldName.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldName.clearButtonMode = UITextField.ViewMode.whileEditing
        view.addSubview(textFieldName)
        
        lineName.frame = CGRect(x: 20, y: 340, width: 300, height: 1)
        lineName.backgroundColor = .gray
        view.addSubview(lineName)
        
//Date sector
        
        textDate.frame = CGRect(x: 20, y: 370, width: 100, height: 30)
        textDate.text = "Дата"
        textDate.textAlignment = .left
        textDate.textColor = .systemBlue
        view.addSubview(textDate)
        
        textFieldDate.frame = CGRect(x: 20, y: 400, width: 300, height: 30)
        textFieldDate.placeholder = "Введите дату"
        textFieldDate.textAlignment = .left
        textFieldDate.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldDate.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldDate.inputView = pickerDateBirth
        view.addSubview(textFieldDate)
        
        lineDate.frame = CGRect(x: 20, y: 430, width: 300, height: 1)
        lineDate.backgroundColor = .gray
        view.addSubview(lineDate)
        
       
// Age Sector
        
        textAge.frame = CGRect(x: 20, y: 460, width: 100, height: 30)
        textAge.text = "Возраст"
        textAge.textAlignment = .left
        textAge.textColor = .systemBlue
        view.addSubview(textAge)
        
        textFieldAge.frame = CGRect(x: 20, y: 490, width: 300, height: 30)
        textFieldAge.placeholder = "Дабавить"
        textFieldAge.textAlignment = .left
        textFieldAge.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldAge.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldAge.inputView = pickerAge
        view.addSubview(textFieldAge)
        
        lineAge.frame = CGRect(x: 20, y: 520, width: 300, height: 1)
        lineAge.backgroundColor = .gray
        view.addSubview(lineAge)
        
        
    //Sex sector
        
        textSex.frame = CGRect(x: 20, y: 550, width: 100, height: 30)
        textSex.text = "Пол"
        textSex.textAlignment = .left
        textSex.textColor = .systemBlue
        view.addSubview(textSex)
        
        textFieldSex.frame = CGRect(x: 20, y: 580, width: 300, height: 30)
        textFieldSex.placeholder = "Дабавить"
        textFieldSex.textAlignment = .left
        textFieldSex.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldSex.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldSex.inputView = pickerSex
        view.addSubview(textFieldSex)
        
        lineSex.frame = CGRect(x: 20, y: 610, width: 300, height: 1)
        lineSex.backgroundColor = .gray
        view.addSubview(lineSex)

    //Instagram sector
        
        textInstagram.frame = CGRect(x: 20, y: 640, width: 100, height: 30)
        textInstagram.text = "Instagram"
        textInstagram.textAlignment = .left
        textInstagram.textColor = .systemBlue
        view.addSubview(textInstagram)
        
        textFieldInstagram.frame = CGRect(x: 20, y: 670, width: 300, height: 30)
        textFieldInstagram.placeholder = "Дабавить"
        textFieldInstagram.textAlignment = .left
        textFieldInstagram.font = UIFont.boldSystemFont(ofSize: 15)
        textFieldInstagram.clearButtonMode = UITextField.ViewMode.whileEditing
        textFieldInstagram.addTarget(self, action: #selector(askInstagram), for: .touchDown)
        view.addSubview(textFieldInstagram)
        
        lineInstagram.frame = CGRect(x: 20, y: 700, width: 300, height: 1)
        lineInstagram.backgroundColor = .gray
        view.addSubview(lineInstagram)
        
        view.backgroundColor = .white
                                                            
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(cancelButton))
        
        creatPickerAge()
        createPickerForSex()
        createPickerBirth()
    
    }
    
    func creatPickerAge(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let donButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePress))
        toolBar.setItems([donButton], animated: true)
        textFieldAge.inputAccessoryView = toolBar
        
        pickerAge.tag = 0
        pickerAge.backgroundColor = .white
        pickerAge.tintColor = .blue
        pickerAge.delegate = self
        pickerAge.dataSource = self
    }
    
    @objc func donePress() {
        textFieldAge.text = "\(pickerAge.selectedRow(inComponent: 0))"
        self.view.endEditing(true)
    }
    
    func createPickerForSex(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressedSex))
        toolBar.setItems([doneButton], animated: true)
        textFieldSex.inputAccessoryView = toolBar
        
        
        pickerSex.tag = 1
        pickerSex.backgroundColor = .white
        pickerSex.tintColor = .blue
        pickerSex.delegate = self
        pickerSex.dataSource = self
        
    }
    
    @objc func donePressedSex(){
        let sex = pickerSex.selectedRow(inComponent: 0)
        if sex == 0 {
            textFieldSex.text = "man"
        } else {
            textFieldSex.text = "woman"
        }
        self.view.endEditing(true)
    }
    
    
    
    func createPickerBirth(){
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(donePressDate))
        toolBar.setItems([doneButton], animated: true)
        textFieldDate.inputAccessoryView = toolBar
        textFieldDate.inputView = pickerDateBirth
        
        pickerDateBirth.center = view.center
        pickerDateBirth.preferredDatePickerStyle = .wheels
        pickerDateBirth.datePickerMode = .date
        var oneYear = TimeInterval()
        oneYear = 365 * 24 * 60 * 60
        let todayDate = Date()
        let oneYearFromToday = todayDate.addingTimeInterval(oneYear)
        let hundredYearsToday = todayDate.addingTimeInterval(100 * oneYear)
        
    }
    
    @objc func donePressDate(){
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .none
        
        textFieldDate.text = formatter.string(from: pickerDateBirth.date)
        self.view.endEditing(true)
    }
    
    @objc func askInstagram(){
        let alert = UIAlertController(title: "Instagram", message: "Введите Instagram", preferredStyle: .alert)
        alert.addTextField(configurationHandler: nil)
        let cancelButton = UIAlertAction(title: "Cancel", style: .default) { (action) in
            self.textFieldInstagram.text  = alert.textFields?.first?.text
        }
        let okButton = UIAlertAction(title: "Ok", style: .default) { (action ) in
            self.textFieldInstagram.text = alert.textFields?.first?.text
            self.textFieldInstagram.textColor = .black
        }
        alert.addAction(cancelButton)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
    
    
    @objc private func cancelButton(){
        _ = UIViewController()
        dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
    @objc private func addButton(){
    
        
        
        
    }
    
}

extension InstagrammViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in picker: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return arrayAge.count
        } else {
            return 2
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            return "\(arrayAge[row])"
        } else {
            return arraySex[row]
        }
    }
    
}
