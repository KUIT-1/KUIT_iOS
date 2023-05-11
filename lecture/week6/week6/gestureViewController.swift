//
//  gestureViewController.swift
//  week6
//
//  Created by 황재상 on 2023/05/06.
//

import UIKit

class gestureViewController: UIViewController {
    @IBOutlet weak var tapGesture: UITapGestureRecognizer!
    var cnt: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tapGesture.addTarget(self, action: #selector(viewTap2))
        tapGesture.addTarget(self, action: #selector(viewTap3))
    }
    
    @IBAction func viewTap(_ sender: Any) {
        cnt += 1
        print(cnt)
    }
    
    @objc func viewTap2(){
        print("view tap 2")
    }
    @objc func viewTap3(){
        print("view tap 3")
    }
    
}
