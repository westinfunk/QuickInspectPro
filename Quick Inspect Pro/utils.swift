//
//  utils.swift
//  Quick Inspect Pro
//
//  Created by Westin Funk on 10/21/19.
//  Copyright © 2019 Grey Nexus. All rights reserved.
//

import Foundation

func generateId(_ name: String) -> String {
    return name.lowercased() + String(Date().timeIntervalSince1970) + String(Int.random(in: 0 ... 1000))
}
