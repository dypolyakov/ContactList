//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 04.01.2023.
//

import UIKit

final class ContactDetailsViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var phoneNumberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    // MARK: - Public Properties
    var person: Person!
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneNumberLabel.text = person.phoneNumber
        emailLabel.text = person.email
    }

}
