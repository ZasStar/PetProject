//
//  AboutUsViewController.swift
//  PetProject
//
//  Created by Zaki on 28.04.2023.
//

import UIKit

final class AboutUsViewController: UIViewController {
    
    @IBOutlet var zakiImageView: UIImageView!
    @IBOutlet var alexImageView: UIImageView!
    @IBOutlet var nickImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        zakiImageView.image = UIImage(named: "zaki")
        zakiImageView.layer.cornerRadius = zakiImageView.bounds.width / 2
        
        alexImageView.image = UIImage(named: "alex")
        alexImageView.layer.cornerRadius = alexImageView.bounds.width / 2
        
        nickImageView.image = UIImage(named: "nick")
        nickImageView.layer.cornerRadius = nickImageView.bounds.width / 2
        
    }
}
