//
//  SignInViewController.swift
//  Carousel
//
//  Created by Terra Oldham on 10/14/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func onSignIn(sender: AnyObject) {
        if emailField.text.isEmpty && passwordField.text.isEmpty {
            var alertView = UIAlertView(title: "Sign In Error", message: "Please enter the correct credentials.", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
