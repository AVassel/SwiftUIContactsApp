//
//  SectionContactList.swift
//  SwiftUIContactsApp
//
//  Created by Anton Vassel on 30.05.2023.
//

import SwiftUI

struct SectionContactList: View {
    let contacts: [Person]
    
    var body: some View {
        NavigationView {
            List(contacts) { person in
                Section(header: Text(person.fullName).font(.headline)) {
                    Label(person.phoneNumber, systemImage: "phone.fill")
                    Label(person.email, systemImage: "tray")
                }
                .textCase(.none)
            }
            .listStyle(.plain)
            .navigationBarTitle("Contact List")
        }
    }
}

struct SectionContactList_Previews: PreviewProvider {
    static var previews: some View {
        SectionContactList(contacts: Person.getPersonContacts())
    }
}
