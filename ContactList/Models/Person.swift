//
//  Person.swift
//  ContactList
//
//  Created by Дмитрий Поляков on 04.01.2023.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    var email: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
}

