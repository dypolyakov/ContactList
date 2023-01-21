//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 08.01.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    // MARK: - Private Properties
    private let personList = Person.getPerson()

    // MARK: - Override Methods
    override func viewDidLoad() {
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactsVC = viewControllers?.first as? ContactsViewController else { return }
        contactsVC.personList = personList
        
        guard let contactsDetailsVC = viewControllers?.last as? ContactsDetailsViewController else { return }
        contactsDetailsVC.personList = personList
    }
}
