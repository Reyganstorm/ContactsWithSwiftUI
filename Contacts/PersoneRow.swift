//
//  PersoneRow.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct PersoneRow: View {
    let persone: Persone
    
    var body: some View {
        HStack {
            Text("\(persone.name)")
            Text("\(persone.surname)")
        }
    }
}


