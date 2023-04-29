//
//  NewsDetailsViewController.swift
//  PetProject
//
//  Created by Zaki on 29.04.2023.
//

import UIKit

final class NewsDetailsViewController: UIViewController {

    @IBOutlet var newsImageView: UIImageView!
    @IBOutlet var newsTitleLabel: UILabel!
    @IBOutlet var newsTextLabel: UILabel!
    
    var newsSingle: News!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsImageView.image = UIImage(named: newsSingle.image)
        newsTitleLabel.text = newsSingle.title
        newsTextLabel.text = newsSingle.text
        newsTextLabel.backgroundColor = .white
        
    }

}
