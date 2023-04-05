//
//  ViewController.swift
//  Beamin
//
//  Created by 이안진 on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        orderButtonInit()
    }
    
    @IBAction func orederButtonTap(_ sender: Any) {
        // 배달 화면
    }
    
    func orderButtonInit() {
        orderLable.text = "세상은 넓고\n맛집은 많다"
        orderBG.layer.cornerRadius = 10
        orderView.layer.cornerRadius = 10
        
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowOpacity = 0.1
        orderView.layer.shadowRadius = 10
    }

}

