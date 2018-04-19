//
//  CreatePasscodeViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol CreatePasscodeViewControllerDelegate: class {
    func didSelectCreatePasscode()
}

final class CreatePasscodeViewController: UIViewController, PasscodeStoryboardInitializable {
    
    weak var delegate: CreatePasscodeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func CreatePasscodeButtonTapped(_ sender: Any) {
        delegate?.didSelectCreatePasscode()
    }
}
