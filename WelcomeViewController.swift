//
//  WelcomeViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/22/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcome1Image: UIImageView!
    @IBOutlet weak var welcome2Image: UIImageView!
    @IBOutlet weak var welcome3Image: UIImageView!
    @IBOutlet weak var welcome4Image: UIImageView!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
    
    }

    
    // MARK: Configuration
    
    func configureScrollView() {
        scrollView.contentSize = CGSize(width: 1280, height: 568)
        scrollView.frame.size = view.frame.size
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
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
