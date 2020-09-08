//
//  ViewController.swift
//  Things You Should Know
//
//  Created by Jenny Martinez on 6/27/20.
//  Developed for Girls In Motion
//  Copyright © 2020 Jenny Martinez. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
    }
    
    @IBAction func didTapSignOut(_ sender: AnyObject) {
      GIDSignIn.sharedInstance().signOut()
    }

}

