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
        // modal.presentation
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2")
        nextVC?.modalPresentationStyle = .fullScreen
        nextVC?.modalTransitionStyle = .flipHorizontal
        self.present(nextVC! , animated: true)
    }
    
    @IBAction func button2Tap(_ sender: Any) {
        // modal.presentation
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2")
        nextVC?.modalPresentationStyle = .fullScreen
        // 종이가 넘어가는 것처럼
        nextVC?.modalTransitionStyle = .partialCurl
        self.present(nextVC! , animated: true)
    }
    
}

