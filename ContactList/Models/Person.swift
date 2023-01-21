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

extension Person {
    static func getPerson() -> [Person] {
        var persons: [Person] = []
        
        let firstNames = DataStore.shared.firstNames.shuffled()
        let lastNames = DataStore.shared.lastNames.shuffled()
        let phoneNumbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails
        
        let iterationCount = min(
            firstNames.count,
            lastNames.count,
            phoneNumbers.count
        )
            
        
        
        for index in 1..<iterationCount {
            let firstName = firstNames[index]
            let lastName = lastNames[index]
            let phoneNumber = phoneNumbers[index]
            let email = "\(firstName.lowercased())\(lastName.lowercased())@\(emails.randomElement() ?? "")"
            
            let person = Person(
                firstName: firstName,
                lastName: lastName,
                phoneNumber: phoneNumber,
                email: email
            )
            
            persons.append(person)
        }
        
        return persons
    }
}

