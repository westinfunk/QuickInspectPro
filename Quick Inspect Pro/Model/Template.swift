//
//  Template.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/20/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

class Template: Codable, Identifiable, NSCopying {
    var id: String
    var title: String
    var details: [Parameter]
    var categories: [Category]
    
    init(title: String, id: String? = nil, details: [Parameter] = [], categories: [Category] = []) {
        self.title = title
        self.details = details
        self.categories = categories
        if (id != nil) {
            self.id = id!
        } else {
            self.id = generateId("template-" + title)
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let details: [Parameter] = self.details.map({ $0.copy() as! Parameter })
        let categories: [Category] = self.categories.map({ $0.copy() as! Category })
        
        let template = Template(title: self.title, id: self.id, details: details, categories: categories)
        return template
    }
}

