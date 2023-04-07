//
//  ViewController.swift
//  Week3
//
//  Created by 이안진 on 2023/04/01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfiled1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button1Tap(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2ViewController
        nextVC.titleText = textfiled1.text ?? ""
        self.present(nextVC, animated: true)
    }
    
    @IBAction func button2Tap(_ sender: Any) {
    }
    
}

