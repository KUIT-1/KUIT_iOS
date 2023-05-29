//
//  ViewController.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orderButtonView: UIView!
    
    @IBOutlet weak var takeoutViewLeadingConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var takeoutViewTrailingConstraint: NSLayoutConstraint!
    
    @IBAction func orderButtonTab(_ sender: Any) {
        
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "orderStoryboard")
        
        self.navigationController?.pushViewController(nextView!, animated: true)
        
        // touch up inside
        self.orderButtonView.transform = CGAffineTransform.identity
    }
    
    @IBAction func orderButtonTouchDown(_ sender: Any) {
        
        // Animate the button
        UIView.animate(withDuration: 0.2, animations: {
            // Scale the button down to 0.9 of its original size
            self.orderButtonView.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
            
            // Change the background color of the button
//            self.orderButton.backgroundColor = UIColor.red
        }) { (_) in
            // Animation completion block (optional)
            // You can perform additional actions here after the animation finishes
            
        }
    }
    
    @IBAction func orderButtonTouchUpOutside(_ sender: Any) {
        UIView.animate(withDuration: 0.2, animations: {
            // Scale the button down to 0.9 of its original size
            self.orderButtonView.transform = CGAffineTransform.identity
            
            // Change the background color of the button
//            self.orderButton.backgroundColor = UIColor
        }) { (_) in
            // Animation completion block (optional)
            // You can perform additional actions here after the animation finishes
            
        }
    }
    
    @IBAction func takeoutButtonTouchDown(_ sender: Any) {
        
        UIView.animateKeyframes(withDuration: 1, delay: 0) {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 1/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 2/12, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 3/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 4/12, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 5/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 6/12, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 7/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 8/12, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 9/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 10/12, relativeDuration: 1/12, animations: {
                print("move left")
                self.takeoutViewLeadingConstraint.constant = 4
                self.takeoutViewTrailingConstraint.constant = 12
                self.view.layoutIfNeeded()
            })
            UIView.addKeyframe(withRelativeStartTime: 11/12, relativeDuration: 1/12, animations: {
                print("move right")
                self.takeoutViewLeadingConstraint.constant = 12
                self.takeoutViewTrailingConstraint.constant = 4
                self.view.layoutIfNeeded()
            })

        }completion: { _ in
            print("move Done")
            self.takeoutViewLeadingConstraint.constant = 8
            self.takeoutViewTrailingConstraint.constant = 8
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        UIView.animate(withDuration: 0.2, animations: {
            // Scale the button down to 0.9 of its original size
            self.orderButtonView.transform = CGAffineTransform.identity
            
            // Change the background color of the button
//            self.orderButton.backgroundColor = UIColor
        }) { (_) in
            // Animation completion block (optional)
            // You can perform additional actions here after the animation finishes
            
        }
    }


}

