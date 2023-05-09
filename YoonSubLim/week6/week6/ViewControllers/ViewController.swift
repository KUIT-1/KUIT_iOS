//
//  ViewController.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func orderButtonTab(_ sender: Any) {
        
        let nextView = self.storyboard?.instantiateViewController(withIdentifier: "orderStoryboard")
        
        self.navigationController?.pushViewController(nextView!, animated: true)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

