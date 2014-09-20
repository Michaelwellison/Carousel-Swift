//
//  IntroScreenViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/19/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class IntroScreenViewController: UIViewController, UIScrollViewDelegate {

   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introScreenImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            navigationController?.navigationBarHidden = true
            configureScrollView()
    }
    
    func configureScrollView() {
        scrollView.contentSize = introScreenImage.frame.size
        scrollView.frame.size = view.frame.size
        
        scrollView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
