//
//  ViewController.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orderButton: UIButton!
    
    @IBOutlet weak var orderButtonView: UIView!
    
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

