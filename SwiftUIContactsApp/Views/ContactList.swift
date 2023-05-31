//
//  ContactList.swift
//  SwiftUIContactsApp
//
//  Created by Anton Vassel on 30.05.2023.
//

import SwiftUI

struct ContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                NavigationLink(person.fullName, destination: PersonView(person: person))
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactList(contacts: Person.getPersonContacts())
    }
}
