//
//  ListItemLink.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI

struct ListItemLink: View {
    var title: String
    var value: String
    
    init(_ title: String, _ value: String = "") {
        self.title = title;
        self.value = value;
    }
    
    var body: some View {
            HStack {
                Text(self.title).font(.subheadline)
                Spacer()
                Text(self.value).font(.subheadline)
            }
    }
}

struct ListItemLink_Previews: PreviewProvider {
    static var previews: some View {
        ListItemLink("westin")
    }
}
