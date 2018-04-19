//
//  AppCoordinator.swift
//  Tracker
//
//  Created by alinkhart on 4/18/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

class AppCoordinator: WelcomeViewControllerDelegate {
    
    let welcomeViewController = WelcomeViewController.makeFromStoryboard()
    let createAccountViewController = CreateAccountViewController.makeFromStoryboard()
    let loginViewController = LoginViewController.makeFromStoryboard()
    
    init() {
        welcomeViewController.delegate = self
    }
    
    func start() -> UIViewController {
        return welcomeViewController
    }
    
    func didSelectCreateAccount() {
        welcomeViewController.present(createAccountViewController, animated: true, completion: nil)
    }
    
    func didSelectLogin() {
        welcomeViewController.present(loginViewController, animated: true, completion: nil)
    }
}
