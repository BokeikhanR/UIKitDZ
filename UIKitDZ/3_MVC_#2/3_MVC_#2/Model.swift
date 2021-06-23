//
//  Model.swift
//  3_MVC_#2
//
//  Created by admin on 23.06.2021.
//

import Foundation
class Configuration {
    var name = String()
    var newName = String()
    
    func buttonNachat(name: String) {
        if name == "leohl" {
            newName = "Hello"
        } else {
            newName = "Error!"
        }
    }
}
