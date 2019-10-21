//
//  InspectionsView.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI


struct InspectionsView: View {
    var body: some View {
        NavigationView {
            List {
                    Text("Inspections")
                    Text("View")
            }.navigationBarTitle("Inspections")
        }
 
    }
}

struct InspectionsView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionsView()
    }
}
