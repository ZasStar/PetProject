//
//  PetTableViewController.swift
//  PetProject
//
//  Created by 65 on 29.04.2023.
//

import UIKit

final class PetTableViewController: UITableViewController {
    
    private var petList = Pet.getPetList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? PetDetailsViewController
        detailsVC?.pet = sender as? Pet
        
    }
    
}
// MARK: - UITableViewDataSource

extension PetTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        petList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pet", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let pet = petList[indexPath.row]
        content.text = pet.nickname
        content.secondaryText = pet.breed
        content.image = UIImage(named: pet.photo)
        content.imageProperties.cornerRadius = tableView.rowHeight / 2
        return cell
        
    }

}
