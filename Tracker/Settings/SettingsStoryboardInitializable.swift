//
//  SettingsStoryboardInitializable.swift
//  Tracker
//
//  Created by alinkhart on 4/18/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol SettingsStoryboardInitializable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle? { get }
    
    static func makeFromStoryboard() -> Self
}

extension SettingsStoryboardInitializable where Self : UIViewController {
    static var storyboardName : String {
        return "Settings"
    }
    
    static var storyboardBundle: Bundle? {
        return nil
    }
    
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
    
    static func makeFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}
