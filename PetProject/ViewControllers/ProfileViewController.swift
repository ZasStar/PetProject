//
//  ProfileViewController.swift
//  PetProject
//
//  Created by Zaki on 28.04.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    
    @IBAction func buttonLogOutTapped() {
        let welcomeViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "navVC")
        
        if let sceneDelegate = view.window?.windowScene?.delegate as? SceneDelegate,
           let window = sceneDelegate.window {
            window.rootViewController = welcomeViewController
        }
    }
    
}
