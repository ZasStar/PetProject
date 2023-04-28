//
//  AboutUsViewController.swift
//  PetProject
//
//  Created by Zaki on 28.04.2023.
//

import UIKit

class AboutUsViewController: UIViewController {
    
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
