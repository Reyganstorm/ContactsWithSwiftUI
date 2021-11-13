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
                Section(header: Text("\(persone.fullName)")) {
                        HStack {
                            Image(systemName: "phone")
                            Text("\(persone.phoneNumber)")
                            }
                        HStack {
                            Image(systemName: "envelope")
                            Text("\(persone.email)")
                            }
                }
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
