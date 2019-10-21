//
//  Inspection.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

class Inspection: Codable, Identifiable {
    var id: String
    var details: [Parameter]
    var categories: [Category]
    
    init(template: Template) {
        self.id = generateId("inspection-")
        let templateCopy: Template = template.copy() as! Template
        self.details = templateCopy.details
        self.categories = templateCopy.categories
    }
}
