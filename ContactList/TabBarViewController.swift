//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 08.01.2023.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let personList = getPersons()

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactsVC = segue.destination as? ContactsViewController else { return }
        
        contactsVC.personList = personList
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
