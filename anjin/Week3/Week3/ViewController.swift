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

    @IBAction func Button2Tap(_ sender: Any) {
        self.performSegue(withIdentifier: "Segue1", sender: self)
    }
    
}

