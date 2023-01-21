//
//  ContactsViewController.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 04.01.2023.
//

import UIKit

final class ContactsViewController: UITableViewController {
    
    // MARK: - Public Properties
    var personList: [Person]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        personList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact", for: indexPath)
        let person = personList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = person.fullName
        
        cell.contentConfiguration = content

        return cell
    }

    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactDetailsVC.person = personList[indexPath.row]
        
    }
    
}
