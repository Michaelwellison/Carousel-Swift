//
//  SignInViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/19/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Outlets
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginFormView: UIView!
    @IBOutlet weak var loginTextImage: UIImageView!
    
    // MARK: View Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: Custom Functions
    
    func startUserEmailAndPasswordCheck() {
        
        var emailFieldInput = String(emailTextField.text)
        var passwordFieldInput = String(passwordTextField.text)
        
        if emailFieldInput == "" {
            
            
            var signingInView = UIAlertController(title: "Signing in...", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(signingInView, animated: true, completion: nil)
            
            delay(2.0, closure: {
            
                var noEmailErrorView = UIAlertController(title: "Missing email and password", message: "Please enter email and password.", preferredStyle: UIAlertControllerStyle.Alert)
                noEmailErrorView.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
                self.dismissViewControllerAnimated(true, completion: nil)
                self.presentViewController(noEmailErrorView, animated: true, completion: nil)
            })
            
        } else if emailFieldInput == "m@me.com" && passwordFieldInput == "p" {
            
            var signingInView = UIAlertController(title: "Signing in...", message: "", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(signingInView, animated: true, completion: nil)
            
            delay(2.0, closure: {
                self.dismissViewControllerAnimated(true, completion: nil)
                self.performSegueWithIdentifier("signIn", sender: self)
            })
            
        } else {
            
            var errorView = UIAlertController(title: "Incorrect Password", message: "The password or username you entered is incorrect. Please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            errorView.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(errorView, animated: true, completion: nil)
        }
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    
    // MARK: Text Field Delegate
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        
        UIView.animateWithDuration(0.5, animations: {
            self.loginFormView.frame = CGRectMake(0, 80, 320, 119)
            
            self.loginTextImage.hidden = true
        })
        
        return true
    }
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        
        UIView.animateWithDuration(0.5, animations: {
            self.loginFormView.frame = CGRectMake(0, 159, 320, 119)
            self.loginTextImage.hidden = false
        })
        
        return true
    }
    
        // MARK: Actions
    
    @IBAction func onTapOutsideTextView(sender: AnyObject) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    @IBAction func onTapSignInButton(sender: UIButton) {
        startUserEmailAndPasswordCheck()
    }
    

    // MARK: Navigation
    

}
