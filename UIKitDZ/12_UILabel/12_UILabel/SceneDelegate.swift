//
//  SceneDelegate.swift
//  12_UILabel
//
//  Created by admin on 05.07.2021.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    let firstVC = ViewPageVC()
    let secondVC = SettingsVC()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        //NavigationControllers
        let firstNavController = UINavigationController(rootViewController: firstVC)
        let secondNavController = UINavigationController(rootViewController: secondVC)
        
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers([firstNavController,secondNavController], animated: true)
        window?.rootViewController = tabBarController
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }
}

