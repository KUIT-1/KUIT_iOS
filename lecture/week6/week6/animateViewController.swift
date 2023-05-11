//
//  animateViewController.swift
//  week6
//
//  Created by 황재상 on 2023/05/06.
//

import UIKit

class animateViewController: UIViewController {
    
    @IBOutlet weak var bottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonTap(_ sender: Any) {
        
        UIView.animateKeyframes(withDuration: 2, delay: 0, animations: {
            UIView.addKeyframe(withRelativeStartTime: 0, relativeDuration: 1 / 4, animations: {
                self.bottomConstraint.constant = 0
                self.view.layoutIfNeeded()
            }
            )
            
            UIView.addKeyframe(withRelativeStartTime: 1 / 4, relativeDuration: 1 / 4, animations: {
                self.bottomConstraint.constant = 100
                self.view.layoutIfNeeded()
            }
            )
            
            UIView.addKeyframe(withRelativeStartTime: 2 / 4, relativeDuration: 1 / 4, animations: {
                self.bottomConstraint.constant = 0
                self.view.layoutIfNeeded()
            }
            )
            
            UIView.addKeyframe(withRelativeStartTime: 3 / 4, relativeDuration: 1 / 4, animations: {
                self.bottomConstraint.constant = 50
                self.view.layoutIfNeeded()
            }
            )
        }
        )
        
        
        
        UIView.animate(withDuration: 0.5,
                       delay: 0,
                       options: .curveEaseIn,
                       animations: {
            self.bottomConstraint.constant = 0
            self.view.layoutIfNeeded()
        }, completion: { _ in
            UIView.animate(withDuration: 0.5,
                           delay: 0,
                           options: .curveEaseIn,
                           animations: {
                self.bottomConstraint.constant = 100
                self.view.layoutIfNeeded()
            },completion: { _ in
                UIView.animate(withDuration: 0.5,
                               delay: 0,
                               options: .curveEaseIn,
                               animations: {
                    self.bottomConstraint.constant = 0
                    self.view.layoutIfNeeded()
                },completion: { _ in
                    UIView.animate(withDuration: 0.5,
                                   delay: 0,
                                   options: .curveEaseIn,
                                   animations: {
                        self.bottomConstraint.constant = 50
                        self.view.layoutIfNeeded()
                    })
                }
                )
            }
            )
        }
        )
    }
}
