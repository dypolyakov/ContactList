//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 08.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
    
    let personList = DataStore.getPerson()

    override func viewDidLoad() {
        
        guard let contactsVC = viewControllers?.first as? ContactsViewController else { return }
        contactsVC.personList = personList
        
        guard let contactsDetailsVC = viewControllers?.last as? ContactsDetailsViewController else { return }
        contactsDetailsVC.personList = personList
        
    }
}
