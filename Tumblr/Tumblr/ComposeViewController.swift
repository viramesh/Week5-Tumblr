//
//  ComposeViewController.swift
//  Tumblr
//
//  Created by viramesh on 3/6/15.
//  Copyright (c) 2015 vbits. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {
    
   
    @IBOutlet weak var btn1: UIImageView!
    @IBOutlet weak var btn2: UIImageView!
    @IBOutlet weak var btn3: UIImageView!
    @IBOutlet weak var btn4: UIImageView!
    @IBOutlet weak var btn5: UIImageView!
    @IBOutlet weak var btn6: UIImageView!
    
    var offset:CGFloat = 120
    var dismissOffset:CGFloat = 400
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        showBtns()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var destinationVC = segue.destinationViewController as UIViewController
        destinationVC.modalPresentationStyle = UIModalPresentationStyle.Custom
        destinationVC.transitioningDelegate = self
        
    }*/
    
    func showBtns() {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn1.center.y = self.btn1.center.y - self.offset
            self.btn1.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.08, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn2.center.y = self.btn2.center.y - self.offset
            self.btn2.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.04, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn3.center.y = self.btn3.center.y - self.offset
            self.btn3.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.06, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn4.center.y = self.btn4.center.y - self.offset
            self.btn4.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.02, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn5.center.y = self.btn5.center.y - self.offset
            self.btn5.alpha = 1
        }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn6.center.y = self.btn6.center.y - self.offset
            self.btn6.alpha = 1
        }, completion: nil)
    }
    
    func hideBtns() {
        UIView.animateWithDuration(0.3, delay: 0, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn1.center.y = self.btn1.center.y - self.dismissOffset
            self.btn1.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.08, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn2.center.y = self.btn2.center.y - self.dismissOffset
            self.btn2.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.04, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn3.center.y = self.btn3.center.y - self.dismissOffset
            self.btn3.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.06, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn4.center.y = self.btn4.center.y - self.dismissOffset
            self.btn4.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.02, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn5.center.y = self.btn5.center.y - self.dismissOffset
            self.btn5.alpha = 0
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.1, options: UIViewAnimationOptions.CurveEaseOut, animations: { () -> Void in
            self.btn6.center.y = self.btn6.center.y - self.dismissOffset
            self.btn6.alpha = 0
            }, completion: nil)
    }
    
    
    
    
}
