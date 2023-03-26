//
//  Person.swift
//  ContactList
//
//  Created by Artem Kuniaev on 22.03.2023.
//
import Foundation

struct Person {
    let firstname: String
    let lastname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(firstname) \(lastname)"
    }
    
    static func getContactList() -> [Person] {
        let dataStore = DataStore()
        var contactList: [Person] = []
        
        let firstNames = dataStore.firstNames.shuffled()
        let lastNames = dataStore.lastNames.shuffled()
        let phoneNumbers = dataStore.phoneNumbers.shuffled()
        let emails = dataStore.emails.shuffled()
        
        let maxIndex = min(
            firstNames.count,
            lastNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for i in 0..<maxIndex {
            contactList.append(
               Person(
                   firstname: firstNames[i],
                   lastname: lastNames[i],
                   phoneNumber: phoneNumbers[i],
                   email: emails[i]
               )
            )
        }
        return contactList
    }
}

