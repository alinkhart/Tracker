//
//  Track.swift
//  Tracker
//
//  Created by alinkhart on 5/20/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import Foundation
import RealmSwift

class Track: Object {
    @objc dynamic var title = ""
    @objc dynamic var createdDate = Date(timeIntervalSinceNow: 0)
    @objc dynamic var lastModifiedDate: Date? = nil
    @objc dynamic var deletedDate: Date? = nil
    
    let records = List<Record>()
}
