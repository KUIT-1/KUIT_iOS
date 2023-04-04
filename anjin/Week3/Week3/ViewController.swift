//
//  ViewController.swift
//  Week3
//
//  Created by 이안진 on 2023/04/01.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Tap(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2")
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }
    
    @IBAction func button2Tap(_ sender: Any) {
    }
    
}

