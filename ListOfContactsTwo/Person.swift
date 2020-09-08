//
//  Person.swift
//  ListOfContactsTwo
//
//  Created by Yaroslav on 08.09.2020.
//  Copyright © 2020 Yaroslav. All rights reserved.
//

let dataManager = DataManager()
let persons = Person.getContactList()

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}


class DataManager {
    let names: [String] = ["William", "James", "Charlie", "Oliver", "Oscar",
                           "Thomas"]
    
    let surnames: [String] = ["Adams", "Baker", "Davidson", "Elliot", "Grant",
                              "Hill"]
    
    let emails: [String] = ["aa@gmail.com", "bb@gmail.com", "cc@gmail.com",
                            "dd@gmail.com", "ee@gmail.com", "ff@gmail.com"]
    
    let phoneNumbers: [String] = ["00000001", "00000002", "00000003",
                                  "00000004", "00000005", "00000006"]
    
}

extension Person {
    static func getContactList() -> [Person] {
        
        var list: [Person] = []
        
        var namesSet = Set(dataManager.names)
        var surnamesSet = Set(dataManager.surnames)
        var emailsSet = Set(dataManager.emails)
        var phoneNumbersSet = Set(dataManager.phoneNumbers)
        
        while !namesSet.isEmpty {
            list.append(Person(name: namesSet.removeFirst(),
            surname: surnamesSet.removeFirst(),
            email: emailsSet.removeFirst(),
            phoneNumber: phoneNumbersSet.removeFirst()))
        }
                
        return list
        
    }
}
