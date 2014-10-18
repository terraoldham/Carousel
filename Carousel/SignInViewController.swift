//
//  SignInViewController.swift
//  Carousel
//
//  Created by Terra Oldham on 10/14/14.
//  Copyright (c) 2014 HearsaySocial. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UIAlertViewDelegate {
    func delay(delay:Double, closure:()->()) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))), dispatch_get_main_queue(), closure)
    }

    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        //buttonIndex is 0 for cancel
        //buttonIndex ranges from 1 - n for other buttons
        if buttonIndex == 0 {
            println("works")
        } 
    }
    
    @IBOutlet weak var loginActivity: UIActivityIndicatorView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBAction func onSignIn(sender: AnyObject) {
        self.loginActivity.startAnimating()
        delay(2) {
            if self.emailField.text == "email" && self.passwordField.text == "password" {
                self.performSegueWithIdentifier("login segue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Sign In Error", message: "Please enter the correct credentials.", delegate: nil, cancelButtonTitle: "OK")
                alertView.show()
            }
        self.loginActivity.stopAnimating()
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
