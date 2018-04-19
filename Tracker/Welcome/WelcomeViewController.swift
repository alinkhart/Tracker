//
//  WelcomeViewController.swift
//  Tracker
//
//  Created by alinkhart on 4/15/18.
//  Copyright © 2018 Adam Linkhart. All rights reserved.
//

import UIKit

protocol WelcomeViewControllerDelegate : class {
    func didSelectCreateAccount()
    func didSelectLogin()
}

final class WelcomeViewController: UIViewController, WelcomeStoryboardInitializable {

    @IBOutlet weak var CreateAccountButton: UIButton!
    @IBOutlet weak var LogInButton: UIButton!
    
    weak var delegate: WelcomeViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CreateAccountButtonTapped(_ sender: Any) {
        delegate?.didSelectCreateAccount()
    }
    
    @IBAction func LogInButtonTapped(_ sender: Any) {
        delegate?.didSelectLogin()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
