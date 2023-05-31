//
//  ContentView.swift
//  SwiftUIContactsApp
//
//  Created by Anton Vassel on 30.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    private let contacts = Person.getPersonContacts()
    
    var body: some View {
        TabView {
            ContactList(contacts: contacts)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            
            SectionContactList(contacts: contacts)
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
