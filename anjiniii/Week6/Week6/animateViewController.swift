//
//  animateViewController.swift
//  Week6
//
//  Created by 이안진 on 2023/05/18.
//

import UIKit

class animateViewController: UIViewController {
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func isbuttonTapped(_ sender: Any) {
        UIView.animate(withDuration: 2.0, delay: 0.0, options: .curveEaseInOut) {
            self.topConstraint.constant = self.topConstraint.constant == 120 ? 240 : 120
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func isGoToRightButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 1.0) {
            self.trailingConstraint.constant = 0
            self.view.layoutIfNeeded()
        } completion: { _ in
            UIView.animate(withDuration: 1.0) {
                self.trailingConstraint.constant = 140
                self.view.layoutIfNeeded()
            }
        }
    }
    
    @IBAction func isAnimateKeyframesButtonTapped(_ sender: Any) {
        UIView.animateKeyframes(withDuration: 2.0, delay: 0.0) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) {
                self.trailingConstraint.constant = 0
                self.view.layoutIfNeeded()
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                self.trailingConstraint.constant = 70
                self.view.layoutIfNeeded()
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.5, relativeDuration: 0.25) {
                self.trailingConstraint.constant = 0
                self.view.layoutIfNeeded()
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) {
                self.trailingConstraint.constant = 140
                self.view.layoutIfNeeded()
            }
        }
    }
}
