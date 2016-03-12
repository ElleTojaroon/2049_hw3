//
//  Model.swift
//  FindMyGoat
//
//  Created by Paviya Tojaroon on 3/5/16.
//  Copyright © 2016 Cornell App Dev. All rights reserved.
//

import Foundation
import RealmSwift

func rand() -> Double
{
    return Double(arc4random()) / Double(UINT32_MAX)
}

class Goat : Object {
    dynamic var id = NSUUID().UUIDString
    
    dynamic var name = ""
    dynamic var age = 0
    
    dynamic var latitude = 40.7127 + rand() / 1000.0
    dynamic var longitude = -74.0059 + rand() / 1000.0
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
