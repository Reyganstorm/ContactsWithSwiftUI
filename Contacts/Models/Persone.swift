//
//  Persone.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import Foundation

struct Persone: Identifiable {
    let id: Int
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
                "\(name) \(surname)"
            }
}

extension Persone {
    static func getContacts() -> [Persone] {
        
        var persons: [Persone] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phoneNumbers = DataManager.shared.phoneNumbers.shuffled()
        
        for counter in 0 ... names.count - 1 {
            let employee = Persone(
                id: counter,
                name: names[counter],
                surname: surnames[counter],
                email: emails[counter],
                phoneNumber: phoneNumbers[counter]
            )
            persons.append(employee)
        }
        return persons
    }
}
