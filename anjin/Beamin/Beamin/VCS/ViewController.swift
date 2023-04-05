//
//  ViewController.swift
//  Beamin
//
//  Created by 이안진 on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var orderOneView: UIView!
    @IBOutlet weak var orderOneBG: UIImageView!
    @IBOutlet weak var orderOneLabel: UILabel!
    
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderLable: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        orderOneButtonInit()
        orderButtonInit()
    }
    
    @IBAction func orderOneButtonTap(_ sender: Any) {
        // 배민1 화면
    }
    
    @IBAction func orederButtonTap(_ sender: Any) {
        // 배달 화면
    }
    
    
    func orderOneButtonInit() {
        orderOneLabel.text = "야구선수 뽑으면\n최대 1만원 쿠폰"
        orderOneBG.layer.cornerRadius = 10
        orderOneView.layer.cornerRadius = 10
        
        orderOneView.layer.shadowColor = UIColor.black.cgColor
        orderOneView.layer.shadowOpacity = 0.1
        orderOneView.layer.shadowRadius = 10
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

