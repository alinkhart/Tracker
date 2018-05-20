//
//  Record.swift
//  Tracker
//
//  Created by alinkhart on 5/20/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import Foundation
import RealmSwift

class Record: Object {
    @objc dynamic var entry = ""
    @objc dynamic var createdDate = Date(timeIntervalSinceNow: 0)
    @objc dynamic var deletedDate: Date? = nil
    @objc dynamic var lastModifiedDate: Date? = nil
}
