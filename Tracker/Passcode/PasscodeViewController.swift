//
//  PasscodeViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol PasscodeViewControllerDelegate: class {
    func didSelectEnterPasscode()
}

final class PasscodeViewController: UIViewController, PasscodeStoryboardInitializable {
    
    weak var delegate: PasscodeViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func EnterPasscodeButtonTapped(_ sender: Any) {
        delegate?.didSelectEnterPasscode()
    }
}
