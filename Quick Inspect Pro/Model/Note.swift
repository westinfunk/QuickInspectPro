//
//  Note.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

enum NoteType: String, Codable {
    case deficiency = "Deficiency"
    case information = "Information"
}

class Note: Codable, Identifiable, NSCopying {
    var id: String?
    var text: String
    var type: NoteType?
    
    init(text: String, type: NoteType? = nil, id: String? = nil) {
        self.text = text
        self.type = type
        if (id != nil) {
            self.id = id
        } else {
            self.id = generateId("note-")
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any  {
        let note = Note(text: self.text, type: self.type, id: self.id)
        return note
    }
}
