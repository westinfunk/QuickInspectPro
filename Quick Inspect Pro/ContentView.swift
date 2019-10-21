//
//  ContentView.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
                InspectionsView()
                    .tabItem {
                        VStack {
                            Image(systemName: "folder")
                            Text("Inspections")
                        }
                }
                .tag(0)
                TemplatesView()
                    .tabItem {
                        VStack {
                            Image(systemName: "text.badge.plus")
                            Text("New")
                        }
                }
                .tag(1)
                AccountView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Account")
                    }
                }.tag(2)
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
