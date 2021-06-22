//
//  ViewControllerTwo.swift
//  2_MVC
//
//  Created by admin on 22.06.2021.
//

import UIKit

class ViewControllerTwo: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        hello()
    }
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    print("viewDidAppear")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    func hello(){
        print("Hi!")
    }
}
