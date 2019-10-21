//
//  SwiftUIView.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI


struct TemplatesView: View {
    
    var templates: [Template] = [
        Template(title: "Template 1", details: [], categories: []),
        Template(title: "Template 2", details: [], categories: []),
        Template(title: "Template 3", details: [], categories: [])
    ]
    
    func say(at offsets: IndexSet) {
        print("hey")
    }
    
    var body: some View {
        NavigationView {
            List{
                ForEach(templates, id: \.id) { template in
                    NavigationLink(destination: LoginView()) {
                        ListItemLink(template.title, "")
                    }
                    }.onDelete(perform: say)
                HStack {
                    Text("Create Template").font(.headline)
                    Image(systemName: "plus.square")
                }
                HStack {
                    Text("Delete").font(.headline)
                    Image(systemName: "trash")
                }
            }.navigationBarTitle("New Inspection")
 
        }
    }
    
}

struct TemplatesView_Previews: PreviewProvider {
    static var previews: some View {
        TemplatesView()
    }
}
