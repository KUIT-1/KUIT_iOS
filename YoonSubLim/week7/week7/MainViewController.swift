//
//  MainViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/24.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func mypageBtnTap(_ sender: Any) {
        
        let nextVC = self.storyboard?.instantiateViewController(identifier: "mypageVC")
        
        self.navigationController?.pushViewController(nextVC!, animated: true)
        
    }
    
    
}
