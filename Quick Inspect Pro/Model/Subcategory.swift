//
//  Subcategory.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

class Subcategory: Codable, Identifiable, NSCopying {
    var id: String?
    var title: String
    var params: [Parameter]
    var photos: [Photo]
    var subcategories: [Subcategory]
    var notes: [Note]
    var header: String?
    var footer: String?
    
    init(title: String, id: String? = nil, params: [Parameter] = [], photos: [Photo] = [], subcategories: [Subcategory] = [], notes: [Note], header: String? = nil, footer: String? = nil) {
        self.title = title
        self.params = params
        self.photos = photos
        self.subcategories = subcategories
        self.notes = notes
        self.header = header
        self.footer = footer
        if (id != nil) {
            self.id = id
        } else {
            self.id = generateId(title)
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let params: [Parameter] = self.params.map({ $0.copy() as! Parameter })
        let photos: [Photo] = self.photos.map({ $0.copy() as! Photo })
        let subcategories: [Subcategory] = self.subcategories.map({ $0.copy() as! Subcategory })
        let notes = self.notes.map({ $0.copy() as! Note })
        
        let subcategory = Subcategory(title: self.title, id: self.id, params: params, photos: photos, subcategories: subcategories, notes: notes, header: self.header, footer: self.footer)
        return subcategory
    }
}
