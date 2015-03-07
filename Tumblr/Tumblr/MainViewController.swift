//
//  MainViewController.swift
//  Tumblr
//
//  Created by viramesh on 3/6/15.
//  Copyright (c) 2015 vbits. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var composeView: UIView!
    @IBOutlet weak var composeViewDismissBtn: UIButton!
    
    var homeVC:HomeViewController!
    var searchVC:SearchViewController!
    var composeVC:ComposeViewController!
    var accountVC:AccountViewController!
    var trendingVC:TrendingViewController!
    var activeVC: UIViewController!
    
    @IBOutlet weak var homeViewBtn: UIButton!
    @IBOutlet weak var searchViewBtn: UIButton!
    @IBOutlet weak var composeViewBtn: UIButton!
    @IBOutlet weak var accountViewBtn: UIButton!
    @IBOutlet weak var trendingViewBtn: UIButton!
    var activeViewBtn:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        homeVC = storyboard.instantiateViewControllerWithIdentifier("HomeViewController") as HomeViewController
        searchVC = storyboard.instantiateViewControllerWithIdentifier("SearchViewController") as SearchViewController
        accountVC = storyboard.instantiateViewControllerWithIdentifier("AccountViewController") as AccountViewController
        trendingVC = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController") as TrendingViewController
        
        homeVC.view.frame = contentView.frame
        searchVC.view.frame = contentView.frame
        accountVC.view.frame = contentView.frame
        trendingVC.view.frame = contentView.frame
        
        activeVC = homeVC
        displayContentController(homeVC, container: contentView)
        
        activeViewBtn = homeViewBtn
        homeViewBtn.selected = true
        
        composeViewDismissBtn.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func displayContentController(content: UIViewController, container: UIView) {
        addChildViewController(content)
        container.addSubview(content.view)
        content.didMoveToParentViewController(self)
    }
    
    func hideContentController(content: UIViewController) {
        content.willMoveToParentViewController(nil)
        content.view.removeFromSuperview()
        content.removeFromParentViewController()
    }

    @IBAction func tabBarBtnPressed(sender: UIButton) {
        if(sender != activeViewBtn) {
            
            
            switch(sender) {
            case homeViewBtn:   hideContentController(activeVC)
                                displayContentController(homeVC, container: contentView)
                                activeVC=homeVC
                
            case searchViewBtn: hideContentController(activeVC)
                                displayContentController(searchVC, container: contentView)
                                activeVC=searchVC
                
            case composeViewBtn:var storyboard = UIStoryboard(name: "Main", bundle: nil)
                                composeVC = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController") as ComposeViewController
                                composeVC.view.frame = composeView.frame
                                composeVC.view.alpha = 0
                                composeViewDismissBtn.alpha = 0
                                displayContentController(composeVC, container: composeView)
                                composeViewDismissBtn.hidden = false
                                UIView.animateWithDuration(0.3, animations: { () -> Void in
                                    self.composeVC.view.alpha = 1
                                    self.composeViewDismissBtn.alpha = 1
                                })
                
                
            case accountViewBtn:hideContentController(activeVC)
                                displayContentController(accountVC, container: contentView)
                                activeVC=accountVC
                
            case trendingViewBtn:hideContentController(activeVC)
                                displayContentController(trendingVC, container: contentView)
                                activeVC=trendingVC
                
            default: break
                //
            }
            
            if(sender != composeViewBtn) {
                activeViewBtn.selected = false
                sender.selected = true
                activeViewBtn = sender
            }
        }
    }
    @IBAction func composeViewDismiss(sender: AnyObject) {
        composeVC.hideBtns()
        UIView.animateWithDuration(0.3, delay: 0.1, options: UIViewAnimationOptions.CurveEaseIn, animations: { () -> Void in
            self.composeVC.view.alpha = 0
            self.composeViewDismissBtn.alpha = 0
        }) { (Bool) -> Void in
            self.hideContentController(self.composeVC)
            self.composeViewDismissBtn.hidden = true
        }
        
    }
}
