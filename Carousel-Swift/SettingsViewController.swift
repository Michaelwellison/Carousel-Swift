//
//  SettingsViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/23/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var settingsImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureScrollView()
        
    }

    func configureScrollView(){
        scrollView.contentSize = settingsImageView.frame.size
        scrollView.frame.size = view.frame.size
        scrollView.contentInset.bottom = 65
        
    }

    @IBAction func onDismissButton(sender: AnyObject) {
        
        dismissViewControllerAnimated(true, completion: nil)
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
