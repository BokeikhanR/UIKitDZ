//
//  ViewController.swift
//  14_UITextView
//
//  Created by admin on 08.07.2021.
//

import UIKit

final class ViewController: UIViewController {

    private var myTextView = UITextView()
    private var sizeSlider = UISlider()
    private var enlargeLabel = UILabel()
    private var reduceLabel = UILabel()
    private var modeSwitch = UISwitch()
    private var enlargeButton = UIButton()
    private var reduceButton = UIButton()

    private var yellowButton = UIButton()
    private var grayButton = UIButton()
    private var blueButton = UIButton()
    private var blackButton = UIButton()

    private var fontPicker = UIPickerView()
    private var fontPickerArray = UIFont.familyNames

    private let youText = """
    200 мыңнан астам қазақстандық зейнетақы жинақтарын тұрғын үй жағдайларын жақсартуға және enpf-otbasy.kz платформасы арқылы емдеуге пайдаланды, деп хабарлайды Daynews.kz "Отбасы банкінің" баспасөз қызметіне сілтеме жасай отырып.

    "8 шілдедегі жағдай бойынша бірыңғай жинақтаушы зейнетақы қоры" Отбасы банк " АҚ-да ашылған қазақстандықтардың арнайы шоттарына 1,5 трлн теңгеден астам қаржы аударды. Оның 176 млрд теңгесі 45 күн өткеннен кейін пайдаланылмағаны ретінде БЖЗҚ-ға қайтарылды. 205 659 қазақстандық тұрғын үй жағдайын жақсартуға және enpf-otbasy.kz платформасы арқылы емделуге жалпы сомасы 1,2 трлн теңге болатын зейнетақы төлемдерін пайдаланды, олардың 64 мыңға жуығы – әйелдер, ал 140 мыңы – ер адамдар", – деп хабарлайды банктің баспасөз қызметі.

    ЖТҚ пайдалану бойынша бірінші орында – Маңғыстау облысының тұрғындары (33 682 адам), жалпы сомасы 312 млрд теңгеге жуық. Екінші орында – Нұр-сұлтан (32 216 адам), елорда тұрғындары шамамен 197 млрд теңгені пайдаланды. Алматының үшінші орында - 27 396 адам, алматылықтар жалпы сомасы 213 млрд теңгеге жуық өздерінің зейнетақы жинақтарын пайдаланды.
    """

//MARK: Visual Components

    override func viewDidLoad() {
        super.viewDidLoad()

        createFontPicker()
        createSwitch()
        createTextView()
        createSlider()
        createLabel()
        createButton()
        createColorButtons()

    }

//MARK: - Private Methods

//Font Picker
    private func createFontPicker(){
        fontPicker.delegate = self
        fontPicker.dataSource = self
        fontPicker.frame = CGRect(x: 100, y: 740, width: 370, height: 50)
        view.addSubview(fontPicker)
    }

//Text View Method
    private func createTextView(){

        myTextView.frame = CGRect(x: 20, y: 100, width: self.view.bounds.width - 40, height: self.view.bounds.height / 2)
        myTextView.font = UIFont.systemFont(ofSize: 25, weight: .semibold )
        myTextView.textAlignment = .natural
        myTextView.text = youText
        myTextView.isEditable = false
        myTextView.textColor = .systemYellow
        myTextView.backgroundColor = .gray
        view.addSubview(myTextView)
    }

//Slider

    private func createSlider(){
        sizeSlider.frame = CGRect(x: 50, y: 570, width: 270, height: 10)
        sizeSlider.minimumTrackTintColor = .systemOrange
        sizeSlider.maximumValue = 50
        sizeSlider.value = 25
        sizeSlider.addTarget(self, action: #selector(changeModeTextView(param:)), for: .valueChanged)
        view.addSubview(sizeSlider)
    }

//Switch

    private func createSwitch(){
        modeSwitch.frame = CGRect(x: 50, y: 740, width: 0, height: 0)
        modeSwitch.isOn = false
        modeSwitch.thumbTintColor = .systemOrange
        modeSwitch.addTarget(self, action: #selector(changeMode(param:)), for: .valueChanged)
        view.addSubview(modeSwitch)
    }

//Label

    private func createLabel(){

        enlargeLabel.frame = CGRect(x: 340, y: 550, width: 40, height: 40)
        enlargeLabel.text = "A"
        enlargeLabel.font = UIFont.boldSystemFont(ofSize: 21)
        enlargeLabel.textColor = .systemOrange
        view.addSubview(enlargeLabel)

        reduceLabel.frame = CGRect(x: 30, y: 550, width: 40, height: 40)
        reduceLabel.text = "A"
        reduceLabel.font = UIFont.boldSystemFont(ofSize: 13)
        reduceLabel.textColor = .systemOrange
        view.addSubview(reduceLabel)
    }

//Button

    private func createButton(){

        enlargeButton.frame = CGRect(x: 120, y: 680, width: 50, height: 50)
        enlargeButton.setTitleColor(.systemOrange, for: .normal)
        enlargeButton.setTitle("a", for: .normal)
        view.addSubview(enlargeButton)

        reduceButton.frame = CGRect(x: 200, y: 680, width: 50, height: 50)
        reduceButton.setTitle("A", for: .normal)
        reduceButton.setTitleColor(.systemOrange, for: .normal)
        view.addSubview(reduceButton)
    }

//Color Buttons

    private func createColorButtons(){

        blackButton.frame = CGRect(x: 30, y: 600, width: 60, height: 60)
        blackButton.backgroundColor = .black
        blackButton.layer.cornerRadius = 30
        blackButton.addTarget(self, action: #selector(tappedButton(param:)), for: .touchUpInside)
        view.addSubview(blackButton)

        yellowButton.frame = CGRect(x: 120, y: 600, width: 60, height: 60)
        yellowButton.backgroundColor = .systemYellow
        yellowButton.layer.cornerRadius = 30
        yellowButton.addTarget(self, action: #selector(tappedButton1(param:)), for: .touchUpInside)
        view.addSubview(yellowButton)

        blueButton.frame = CGRect(x: 210, y: 600, width: 60, height: 60)
        blueButton.backgroundColor = .systemBlue
        blueButton.layer.cornerRadius = 30
        blueButton.addTarget(self, action: #selector(tappedButton2(param:)), for: .touchUpInside)
        view.addSubview(blueButton)

        grayButton.frame = CGRect(x: 300, y: 600, width: 60, height: 60)
        grayButton.backgroundColor = .systemGray2
        grayButton.layer.cornerRadius = 30
        grayButton.addTarget(self, action: #selector(tappedButton3(param:)), for: .touchUpInside)
        view.addSubview(grayButton)
    }

//MARK: - @OBJC METHODS

    @objc func changeModeTextView(param: UISlider){
        self.myTextView.font = UIFont.systemFont(ofSize: CGFloat(Int(param.value)))
    }

    @objc func tappedButton(param: UIButton){
        if param == blackButton{
            return myTextView.textColor = .black
        }
    }
    @objc func tappedButton1(param: UIButton){
        if param == yellowButton{
            return myTextView.textColor = .systemYellow
        }
    }

    @objc func tappedButton2(param: UIButton){
        if param == blueButton{
            return myTextView.textColor = .systemBlue
        }
    }
    @objc func tappedButton3(param: UIButton){
        if param == grayButton{
            return myTextView.textColor = .systemGray2
        }
    }
    @objc func changeMode(param:UISwitch){
        if modeSwitch.isOn == true {
            myTextView.backgroundColor = .black
            view.backgroundColor = .black
        } else {
            myTextView.backgroundColor = .gray
            view.backgroundColor = .white
        }
    }

    @objc func changeWeight(sender: Any ){
        
    }
}

//MARK: Extensions Picker Data Source

extension ViewController: UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        switch pickerView {
        case fontPicker:
            return fontPickerArray.count
        default:
            return 0
        }
    }
}

//MARK: Extension Picker Delegate

extension ViewController: UIPickerViewDelegate{
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

       return fontPickerArray[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myTextView.font = UIFont.init(name: fontPickerArray[row], size: CGFloat(sizeSlider.value))
    }
}


