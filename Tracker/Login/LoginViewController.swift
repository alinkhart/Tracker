//
//  LoginViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol LoginViewControllerDelegate: class {
    func didSelectCancelLogin(_ loginViewController: LoginViewController)
    func didSelectLogin()
}

final class LoginViewController: UIViewController, LoginStoryboardInitializable {

    @IBOutlet weak var CancelButton: UIButton!
    @IBOutlet weak var LogInButton: UIButton!
    
    weak var delegate: LoginViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func CancelButtonTapped(_ sender: Any) {
        delegate?.didSelectCancelLogin(self)
    }
    
    @IBAction func LoginButtonTapped(_ sender: Any) {
        delegate?.didSelectLogin()
    }
}
