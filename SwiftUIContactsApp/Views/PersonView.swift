//
//  PersonView.swift
//  SwiftUIContactsApp
//
//  Created by Anton Vassel on 30.05.2023.
//

import SwiftUI

struct PersonView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            Label(person.phoneNumber, systemImage: "phone.fill")
            Label(person.email, systemImage: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView(person: Person.getPersonContacts().first!)
    }
}
