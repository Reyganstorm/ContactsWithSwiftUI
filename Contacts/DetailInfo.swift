//
//  DetailInfo.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct DetailInfo: View {
    let persone: Persone
    
    var body: some View {
        VStack {
            Spacer()
            Text("Phone number: \(persone.phoneNumber)")
                .padding(.trailing)
            Text("Email Adress: \(persone.email)")
                .padding(.trailing)
            Spacer()
        }
        .navigationTitle("\(persone.fullName)")
    }
}

struct DetailInfo_Previews: PreviewProvider {
    static var previews: some View {
        DetailInfo(persone: Persone.init(id: 1, name: "Shasa", surname: "Cocoat", email: "rufuz@Zino", phoneNumber: "+996557897465"))
    }
}
