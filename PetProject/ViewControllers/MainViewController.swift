//
//  MainViewController.swift
//  PetProject
//
//  Created by Zaki on 29.04.2023.
//

import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    @IBOutlet var petPhotoView: UIImageView!
    
    private var newsList = News.getNews()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.rowHeight = 80
        petPhotoView.layer.cornerRadius = petPhotoView.bounds.height / 2
        petPhotoView.image = UIImage(named: "Sharik")
        
    }


}
// MARK: - News Table View Controller
extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        newsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "news", for: indexPath)
        let news = newsList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = news.title
        content.secondaryText = news.subtitle
        content.image = UIImage(named: news.resnews)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        cell.contentConfiguration = content
        
        return cell
        
    }
    
    //MARK: - Segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let news = newsList[indexPath.row]
        let detailVC = segue.destination as? NewsDetailsViewController
        detailVC?.newsSingle = news
    }
}

