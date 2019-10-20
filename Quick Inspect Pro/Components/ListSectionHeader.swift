//
//  ListSectionHeader.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/19/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import SwiftUI

struct ListSectionHeader: View {
    var title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
    }
}

struct ListSectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        ListSectionHeader("westin")
    }
}
