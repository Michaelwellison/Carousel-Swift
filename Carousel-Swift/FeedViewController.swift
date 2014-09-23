//
//  FeedViewController.swift
//  Carousel-Swift
//
//  Created by Michael Ellison on 9/23/14.
//  Copyright (c) 2014 MichaelWEllison. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImageView: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureScrollView()
    }


    func configureScrollView() {
        scrollView.contentSize = feedImageView.frame.size
        scrollView.frame.size = view.frame.size
        scrollView.contentInset.bottom = 65
        
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
