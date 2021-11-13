//
//  ContentView.swift
//  Contacts
//
//  Created by Руслан Штыбаев on 12.11.2021.
//

import SwiftUI

struct ContentView: View {
    let persone = Persone.getContacts()
    
    var body: some View {
        TabView {
            ContactList(persons: persone)
                .tabItem{
                    Image(systemName: "person.crop.square")
                    Text("Contacts")
                }
            NumberList(persons: persone)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
