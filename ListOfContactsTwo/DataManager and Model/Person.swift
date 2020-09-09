//
//  Person.swift
//  ListOfContactsTwo
//
//  Created by Yaroslav on 08.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

let persons = Person.getContactList()

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }

    static func getContactList() -> [Person] {
        
        var list: [Person] = []
        
        let shuffledNames = dataManager.names.shuffled()
        let shuffledSurnames = dataManager.surnames.shuffled()
        let shuffledEmails = dataManager.emails.shuffled()
        let shuffledPhoneNumbers = dataManager.phoneNumbers.shuffled()
        
        for number in 0...shuffledNames.count - 1 {
            list.append(Person(name: shuffledNames[number],
                               surname: shuffledSurnames[number],
                               email: shuffledEmails[number],
                               phoneNumber: shuffledPhoneNumbers[number]))
        }
                
        return list
        
    }
}

