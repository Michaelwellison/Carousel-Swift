//
//  SignInViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/19/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginFormView: UIView!
    @IBOutlet weak var loginTextImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailTextField.delegate = self
        passwordTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
    
    
    @IBAction func onTapOutsideTextView(sender: AnyObject) {
        emailTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }


}
