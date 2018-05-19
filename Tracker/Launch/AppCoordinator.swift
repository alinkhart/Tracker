//
//  AppCoordinator.swift
//  Tracker
//
//  Created by alinkhart on 4/18/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

class AppCoordinator: WelcomeViewControllerDelegate, LoginViewControllerDelegate, CreateAccountViewControllerDelegate,
    CreatePasscodeViewControllerDelegate, PasscodeViewControllerDelegate, TracksTableViewControllerDelegate {
    
    private let welcomeViewController = WelcomeViewController.makeFromStoryboard()
    private let createAccountViewController = CreateAccountViewController.makeFromStoryboard()
    private let loginViewController = LoginViewController.makeFromStoryboard()
    private let createPasscodeViewController = CreatePasscodeViewController.makeFromStoryboard()
    private let passcodeViewController = PasscodeViewController.makeFromStoryboard()
    private let createTrackViewController = CreateTrackViewController.makeFromStoryboard()
    private let trackDetailsViewController = TrackDetailsViewController.makeFromStoryboard()
    
    private let rootTabBarController: UITabBarController
    private let tracksTableViewController: TracksTableViewController
    private let settingsViewController: SettingsViewController
    
    init() {
        self.rootTabBarController = UIStoryboard(name: "Tabs", bundle: nil).instantiateViewController(withIdentifier: "RootTabBarController") as! UITabBarController
        let tracksNavController = self.rootTabBarController.viewControllers![0] as! UINavigationController
        self.tracksTableViewController = tracksNavController.viewControllers[0] as! TracksTableViewController
        let settingsNavController = self.rootTabBarController.viewControllers![1] as! UINavigationController
        self.settingsViewController = settingsNavController.viewControllers[0] as! SettingsViewController
        
        self.welcomeViewController.delegate = self
        self.loginViewController.delegate = self
        self.createAccountViewController.delegate = self
        self.createPasscodeViewController.delegate = self
        self.passcodeViewController.delegate = self
        self.tracksTableViewController.delegate = self
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
    
    func didSelectCancelLogin(_ loginViewController: LoginViewController) {
        loginViewController.dismiss(animated: true, completion: nil)
    }
    
    func didSelectLogin() {
        loginViewController.present(passcodeViewController, animated: true, completion: nil)
    }
    
    func didSelectCancelCreateAccount(_ createAccountViewController: CreateAccountViewController) {
        createAccountViewController.dismiss(animated: true, completion: nil)
    }
    
    func didSelectCreateAccount() {
        createAccountViewController.present(createPasscodeViewController, animated: true, completion: nil)
    }
    
    func didSelectCreatePasscode() {
        createPasscodeViewController.present(rootTabBarController, animated: true, completion: nil)
    }
    
    func didSelectEnterPasscode() {
        passcodeViewController.present(rootTabBarController, animated: true, completion: nil)
    }
    
    func didSelectCreateTrack() {
        tracksTableViewController.present(createTrackViewController, animated: true, completion: nil)
    }
    
    func didSelectTrack() {
        tracksTableViewController.navigationController?.pushViewController(trackDetailsViewController, animated: true)
    }
}
