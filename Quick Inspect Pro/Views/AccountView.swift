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
    @State var modalDisplayed = false
    
    var body: some View {

        
        NavigationView {
            List {
                Section(header: ListSectionHeader("You")) {
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Name", value: "Westin Funk")
                    }
                    NavigationLink(destination: InspectionsView()) {
                        ListItemLink("Email", value: "westinfunk@gmail.com")
                    }
                }
                Section(header: ListSectionHeader("Team")) {
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Organization", value: "")
                    }
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Address", value: "")
                    }
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Phone", value: "")
                    }
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Website", value: "")
                    }
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Logo", value: "")
                    }
                }
                Section(header: ListSectionHeader("Settings")) {
                    NavigationLink(destination: NewInspectionView()) {
                        ListItemLink("Integrations")
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
