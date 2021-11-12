//
//  SectionRow.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct SectionRow: View {
    let person: Persone
    
    var body: some View {
        List {
            Section(header: Text("\(person.fullName)")) {
                HStack {
                    Image(systemName: "phone")
                    Text("\(person.phoneNumber)")
                }
                HStack {
                    Image(systemName: "envelope")
                    Text("\(person.email)")
                }
        }
        }
    }
}

struct SectionRow_Previews: PreviewProvider {
    static var previews: some View {
        SectionRow(person: Persone.init(id: 1, name: "Shasa", surname: "Cocoat", email: "rufuz@Zino", phoneNumber: "+996557897465"))
    }
}
