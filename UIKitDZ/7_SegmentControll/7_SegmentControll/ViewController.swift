//
//  ViewController.swift
//  7_SegmentControll
//
//  Created by admin on 28.06.2021.
//

import UIKit

class ViewController: UIViewController {

    //First element
    
    var stranisaLabel = UILabel()
    var nameButton1 = UIButton()
    var cenaLabel = UILabel()
    var lineView = UIView()
    
    //Second Element
    
    var stranisaLabel2 = UILabel()
    var nameButton2 = UIButton()
    var cenaLabel2 = UILabel()
    var lineView2 = UIView()
    
    //Third Element
    
    var stranisaLabel3 = UILabel()
    var nameButton3 = UIButton()
    var cenaLabel3 = UILabel()
    var lineView3 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Phones"

       //First element
        let  imageView1 = UIImageView(image: UIImage(named: "IPhone1"))
        imageView1.frame = CGRect(x: 15, y: 120, width: 70, height: 70)
        view.addSubview(imageView1)
    
        
        nameButton1.frame = CGRect(x: 100, y: 130, width: 150, height: 50)
        nameButton1.setTitle("IPhone1", for: .normal)
        nameButton1.setTitleColor(.black, for: .normal)
        nameButton1.addTarget(self, action: #selector(iphoneButton), for: .touchUpInside)
        view.addSubview(nameButton1)
        
        cenaLabel.frame = CGRect(x: 300, y: 130, width: 80, height: 50)
        cenaLabel.text = "400k tg"
        cenaLabel.textColor = .black
        view.addSubview(cenaLabel)
        
//        stranisaLabel.frame = CGRect(x: 15, y: 50, width: 200, height: 50)
//        stranisaLabel.text = "Phones"
//        stranisaLabel.font = UIFont.systemFont(ofSize: 35)
//        stranisaLabel.textAlignment = .left
//        stranisaLabel.textColor = .black
//        view.addSubview(stranisaLabel)
        
        lineView.frame = CGRect(x: 10, y: 200, width: 350, height: 1)
        lineView.backgroundColor = .gray
        view.addSubview(lineView)
        
        //Second Element
        
        let imageView2 = UIImageView(image: UIImage(named: "Samsung1"))
        imageView2.frame = CGRect(x: 15, y: 230, width: 70, height: 70)
        view.addSubview(imageView2)
        
        
        nameButton2.frame = CGRect(x: 100, y: 240, width: 150, height: 50)
        nameButton2.setTitle("Samsung1", for: .normal)
        nameButton2.setTitleColor(.black, for: .normal)
        nameButton2.addTarget(self, action: #selector(samsungButton), for: .touchUpInside)
        view.addSubview(nameButton2)
        
        cenaLabel2.frame = CGRect(x: 300, y: 240, width: 150, height: 50)
        cenaLabel2.text = "250k tg"
        cenaLabel2.textColor = .black
        view.addSubview(cenaLabel2)
        
        lineView2.frame = CGRect(x: 10, y: 310, width: 350, height: 1)
        lineView2.backgroundColor = .gray
        view.addSubview(lineView2)
        
        //Third Element
        
        let imageView3 = UIImageView(image: UIImage(named: "Huawei1"))
        imageView3.frame = CGRect(x: 15, y: 340, width: 70, height: 70)
        view.addSubview(imageView3)
        
        nameButton3.frame = CGRect(x: 100, y: 350, width: 150, height: 50)
        nameButton3.setTitle("Huawei1", for: .normal)
        nameButton3.setTitleColor(.black, for: .normal)
        nameButton3.addTarget(self, action: #selector(huaweiButton), for: .touchUpInside)
        view.addSubview(nameButton3)
        
        
        cenaLabel3.frame = CGRect(x: 300, y: 350, width: 150, height: 50)
        cenaLabel3.text = "450k tg"
        cenaLabel3.textColor = .black
        view.addSubview(cenaLabel3)
        
        lineView3.frame = CGRect(x: 10, y: 430, width: 350, height: 1)
        lineView3.backgroundColor = .gray
        view.addSubview(lineView3)
        
    }
    
    //Method
    
    @objc func iphoneButton(){
        let vc = IPhoneVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func huaweiButton(){
        let vc = HuaweiVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func samsungButton(){
        let vc = SamsungVC()
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

