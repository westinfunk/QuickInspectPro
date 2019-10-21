//
//  Photo.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

class Photo: Codable, NSCopying {
    var url: String
    var notes: [Note]
    
    init(url: String, notes: [Note] = []) {
        self.url = url
        self.notes = notes
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let photo = Photo(url: self.url, notes: self.notes)
        return photo
    }
}
