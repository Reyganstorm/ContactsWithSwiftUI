//
//  NumberList.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct NumberList: View {
    let persons: [Persone]
    
    var body: some View {
        NavigationView {
            List(persons) {persone in
                SectionRow(person: persone)
            }
            .navigationTitle("Information List")
        }
    }
}

struct NumberList_Previews: PreviewProvider {
    static var previews: some View {
        NumberList(persons: Persone.getContacts())
    }
}
