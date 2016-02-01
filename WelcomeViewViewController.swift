//
//  WelcomeViewViewController.swift
//  DropboxProto
//
//  Created by Bobby Smith on 1/28/16.
//  Copyright © 2016 Bobby Smith. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.startButton.alpha = 0
        
        welcomeScrollView.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.height)
        
        let scrollViewWidth: CGFloat = self.welcomeScrollView.frame.width
        let scrollViewHeight: CGFloat = self.welcomeScrollView.frame.height
        
        let imgOne = UIImageView(frame: CGRectMake(0, 0,scrollViewWidth, scrollViewHeight))
        imgOne.image = UIImage(named: "welcome1")
        
        let imgTwo = UIImageView(frame: CGRectMake(scrollViewWidth, 0,scrollViewWidth, scrollViewHeight))
        imgTwo.image = UIImage(named: "welcome2")
        
        let imgThree = UIImageView(frame: CGRectMake(scrollViewWidth*2, 0,scrollViewWidth, scrollViewHeight))
        imgThree.image = UIImage(named: "welcome3")

        self.welcomeScrollView.addSubview(imgOne)
        self.welcomeScrollView.addSubview(imgTwo)
        self.welcomeScrollView.addSubview(imgThree)
        
        welcomeScrollView.delegate = self
        self.pageControl.currentPage = 0
        
        welcomeScrollView.contentSize = CGSizeMake(self.welcomeScrollView.frame.width * 3, self.welcomeScrollView.frame.height)
        
    }
    
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView){
        // Test the offset and calculate the current page after scrolling ends
        let pageWidth:CGFloat = CGRectGetWidth(scrollView.frame)
        let currentPage:CGFloat = floor((scrollView.contentOffset.x-pageWidth/2)/pageWidth)+1
        // Change the indicator
        self.pageControl.currentPage = Int(currentPage)
            UIView.animateWithDuration(1.0, animations: { () -> Void in
//                self.startButton.alpha = 1.0
            })
        }
}
