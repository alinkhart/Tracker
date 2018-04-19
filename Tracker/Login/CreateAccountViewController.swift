//
//  CreateAccountViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate: class {
    func didSelectCancelCreateAccount(_ createAccountViewController: CreateAccountViewController)
    func didSelectCreateAccount()
}

final class CreateAccountViewController: UIViewController, LoginStoryboardInitializable {

    @IBOutlet weak var CancelButton: UIButton!
    @IBOutlet weak var CreateAccountButton: UIButton!
    
    weak var delegate: CreateAccountViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CancelButtonTapped(_ sender: Any) {
        delegate?.didSelectCancelCreateAccount(self)
    }
    
    @IBAction func CreateAccountButtonTapped(_ sender: Any) {
        delegate?.didSelectCreateAccount()
    }
}
