//
//  IntroScreenViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/19/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class IntroScreenViewController: UIViewController, UIScrollViewDelegate {

    // MARK: Outlets
   
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var introScreenImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

            navigationController?.navigationBarHidden = true
            configureScrollView()
    }
    
    // MARK: Configuration
    
    func configureScrollView() {
        scrollView.contentSize = introScreenImage.frame.size
        scrollView.frame.size = view.frame.size
        
        scrollView.delegate = self
    }
    
    // MARK: Scroll View Delegate
    
    func scrollViewDidScrollToTop(scrollView: UIScrollView) {
        println("Scrolled to top")
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        println("Scroll View Will Begin Dragging")
    }
    
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        println("Scroll View will end dragging")
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        println("Scroll View Did Scroll")
    }
    
    // MARK: Actions
    
    @IBAction func onTapCreateButton(sender: UIButton) {
        
        self.performSegueWithIdentifier("createAccount", sender: self)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
