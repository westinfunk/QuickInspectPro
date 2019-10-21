//
//  Category.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

class Category: Codable, Identifiable, NSCopying {
    var id: String?
    var title: String
    var status: Status?
    var params: [Parameter]
    var photos: [Photo]
    var notes: [Note]
    var subcategories: [Subcategory]
    var header: String?
    var footer: String?
    
    init(title: String, id: String? = nil, status: Status? = nil, params: [Parameter] = [], photos: [Photo] = [], notes: [Note] = [], subcategories: [Subcategory] = [], header: String? = nil, footer: String? = nil) {
        self.title = title
        self.status = status
        self.params = params
        self.photos = photos
        self.notes = notes
        self.subcategories = subcategories
        self.header = header
        self.footer = footer
        if (id != nil) {
            self.id = id
        } else {
            self.id = generateId("category-" + title)
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let params: [Parameter] = self.params.map({ $0.copy() as! Parameter })
        let photos: [Photo] = self.photos.map({ $0.copy() as! Photo })
        let subcategories: [Subcategory] = self.subcategories.map({ $0.copy() as! Subcategory})
        
        let category = Category(title: self.title, id: self.id, status: self.status, params: params, photos: photos, notes: self.notes, subcategories: subcategories, header: self.header, footer: self.footer)
        return category
    }
}
