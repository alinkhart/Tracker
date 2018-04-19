//
//  AppCoordinator.swift
//  Tracker
//
//  Created by alinkhart on 4/18/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

class AppCoordinator: WelcomeViewControllerDelegate, CreateAccountViewControllerDelegate {
    
    private let welcomeViewController = WelcomeViewController.makeFromStoryboard()
    private let createAccountViewController = CreateAccountViewController.makeFromStoryboard()
    private let loginViewController = LoginViewController.makeFromStoryboard()
    private let createPasscodeViewController = CreatePasscodeViewController.makeFromStoryboard()
    
    init() {
        welcomeViewController.delegate = self
        createAccountViewController.delegate = self
    }
    
    func start() -> UIViewController {
        return welcomeViewController
    }
    
    func didSelectShowCreateAccount() {
        welcomeViewController.present(createAccountViewController, animated: true, completion: nil)
    }
    
    func didSelectShowLogin() {
        welcomeViewController.present(loginViewController, animated: true, completion: nil)
    }
    
    func didSelectCancelCreateAccount(_ createAccountViewController: CreateAccountViewController) {
        createAccountViewController.dismiss(animated: true, completion: nil)
    }
    
    func didSelectCreateAccount() {
        createAccountViewController.present(createPasscodeViewController, animated: true, completion: nil)
    }
}
