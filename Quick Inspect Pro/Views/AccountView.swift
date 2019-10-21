//
//  AccountView.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI

struct AccountNavLink: View {
    var title: String
    var value: String
    
    init(title: String, value: String = "") {
        self.title = title;
        self.value = value;
    }
    
    var body: some View {
            HStack {
                Text(self.title).font(.headline)
                Spacer()
                Text(self.value).font(.subheadline)
            }
    }
}

struct AccountView: View {
    
    var body: some View {
        NavigationView {
            List {
                Section(header: ListSectionHeader("You")) {
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Name",  "Westin Funk")
                    }
                    NavigationLink(destination: InspectionsView()) {
                        ListItemLink("Email", "westinfunk@gmail.com")
                    }
                }
                Section(header: ListSectionHeader("Team")) {
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Organization", "")
                    }
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Address", "")
                    }
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Phone", "")
                    }
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Website", "")
                    }
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Logo", "")
                    }
                }
                Section(header: ListSectionHeader("Settings")) {
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Integrations")
                    }
                    NavigationLink(destination: TemplatesView()) {
                        ListItemLink("Logout")
                    }
                }
                }.navigationBarTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
