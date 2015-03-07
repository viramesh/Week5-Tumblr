//
//  HomeViewController.swift
//  Tumblr
//
//  Created by viramesh on 3/6/15.
//  Copyright (c) 2015 vbits. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var loginVC:LoginViewController!
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var cancelLoginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        scrollView.contentSize.height = 525
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginDidPres(sender: AnyObject) {
        
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        loginVC = storyboard.instantiateViewControllerWithIdentifier("LoginViewController") as LoginViewController
        
        loginView.alpha = 0
        
        loginVC.view.frame = loginView.frame
       
        addChildViewController(loginVC)
        loginView.addSubview(loginVC.view)
        loginVC.didMoveToParentViewController(self)
        
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.loginView.alpha = 1
        })
        
        cancelLoginBtn.hidden = false
    }

    @IBAction func cancelLoginDidPress(sender: AnyObject) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.loginView.alpha = 0
        }) { (Bool) -> Void in
            self.loginVC.willMoveToParentViewController(nil)
            self.loginVC.view.removeFromSuperview()
            self.loginVC.removeFromParentViewController()
        }
        
        cancelLoginBtn.hidden = true
    }

}
