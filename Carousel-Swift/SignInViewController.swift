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
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Configuration
    
    func userEmailAndPasswordCheck() {
        
        var emailFieldInput = String(emailTextField.text)
        var passwordFieldInput = String(passwordTextField.text)
        
        if emailFieldInput == "michaelwellison@gmail.com" && passwordFieldInput == "password" {
            
            self.performSegueWithIdentifier("signIn", sender: self)
            println("Success!")
            
        } else {
            
            var errorView = UIAlertController(title: "Incorrect Password", message: "The password or username you entered is incorrect. Please try again.", preferredStyle: UIAlertControllerStyle.Alert)
            errorView.addAction(UIAlertAction(title: "ok", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(errorView, animated: true, completion: nil)
            
            println("Error")
        }
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

    // MARK: Navigation
    

}
