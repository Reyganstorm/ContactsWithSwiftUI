//
//  ContactList.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct ContactList: View {
    let persons: [Persone]
    
    var body: some View {
        NavigationView {
                List(persons) {man in
                    NavigationLink(destination: DetailInfo(persone: man)) {
                        PersoneRow(persone: man)
                    }
                    
                
            }
            .listStyle(.plain)
        .navigationTitle("Contact List")
        }
        
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(persons: Persone.getContacts())
    }
}
