//
//  PetDetailsViewController.swift
//  PetProject
//
//  Created by 65 on 29.04.2023.
//

import UIKit

class PetDetailsViewController: UIViewController {
    
    @IBOutlet var petPhotoImageView: UIImageView!
    @IBOutlet var petNicknameLabel: UILabel!
    
    var pet: Pet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petPhotoImageView.image = UIImage(named: pet.photo)
        
    }
}

   
