//
//  gestureViewController.swift
//  Week6
//
//  Created by 이안진 on 2023/05/19.
//

import UIKit

class gestureViewController: UIViewController {
    @IBOutlet var tapGesture: UITapGestureRecognizer!
    @IBOutlet weak var buttonWidth: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tapGesture.addTarget(self, action: #selector(isViewTappedSecond))
        tapGesture.addTarget(self, action: #selector(isViewTappedThird))
    }
    
    @IBAction func isViewTapped(_ sender: Any) {
        print("view is tapped!")
    }
    
    @objc func isViewTappedSecond(){
        print("View is tapped 2!")
    }
    
    @objc func isViewTappedThird(){
        print("view is tapped 3!")
    }
    
    @IBAction func touchUpInside(_ sender: Any) {
        buttonWidth.constant = 200
    }
    
    @IBAction func longPressGesture(_ sender: Any) {
        buttonWidth.constant = 160
    }
    
    @IBAction func touchUpOutside(_ sender: Any) {
        buttonWidth.constant = 240
    }
    
}
