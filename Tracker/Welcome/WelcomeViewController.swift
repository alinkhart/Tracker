//
//  WelcomeViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol WelcomeViewControllerDelegate : class {
    func didSelectShowCreateAccount()
    func didSelectShowLogin()
}

final class WelcomeViewController: UIViewController, WelcomeStoryboardInitializable {

    @IBOutlet weak var CreateAccountButton: UIButton!
    @IBOutlet weak var LogInButton: UIButton!
    
    weak var delegate: WelcomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func CreateAccountButtonTapped(_ sender: Any) {
        delegate?.didSelectShowCreateAccount()
    }
    
    @IBAction func LogInButtonTapped(_ sender: Any) {
        delegate?.didSelectShowLogin()
    }
}
