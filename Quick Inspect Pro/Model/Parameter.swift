//
//  Parameter.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

enum ParameterType: String, Codable {
    case multipleChoice, text
}

enum Status: String, Codable{
    case notInspected = "Not Inspected"
    case notPresent = "Not Present"
}

class Parameter: Codable, Identifiable, NSCopying {
    var id: String?
    var title: String
    var value: String
    var type: ParameterType
    var status: Status?
    var choices: [String]?
    var photos: [Photo]
    
    init(title: String, id: String? = nil, value: String = "", type: ParameterType = .text, choices: [String], photos: [Photo], status: Status? = nil) {
        self.title = title
        self.value = value
        self.type = type
        self.status = status
        self.choices = choices
        self.photos = photos
        
        if (id != nil) {
            self.id = id
        } else {
            self.id = generateId("param-" + title)
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let photos = self.photos.map { (photo) -> Photo in
            return photo.copy() as! Photo
        }
        let parameter = Parameter(title: self.title, id: self.id, value: self.value, type: self.type, choices: self.choices!, photos: photos, status: self.status)
        return parameter
    }
}

