//
//  ViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderLabel: UILabel!
    
    @IBOutlet weak var order1View: UIView!
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1Label: UILabel!
    
    // 화면이 나타날 준비가 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        orderButtonInit()
    }
    
    @IBAction func orderButtonTap(_ sender: Any) {
        //배달 화면
        // 스토리보드 가져오기
        let orderSB = UIStoryboard(name: "Order", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "order")
        self.navigationController?.pushViewController(orderVC, animated: true)
    }

    func orderButtonInit(){
        orderLabel.text = "세상은 넓고\n맛집은 많다"
        orderBG.layer.cornerRadius = 10
        orderView.layer.cornerRadius = 10
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowOpacity = 0.1
        orderView.layer.shadowRadius = 10
        
        order1Label.text = "한 번에 한 집만\n빠르게"
        order1BG.layer.cornerRadius = 10
        order1View.layer.cornerRadius = 10
        order1View.layer.shadowColor = UIColor.black.cgColor
        order1View.layer.shadowOpacity = 0.1
        order1View.layer.shadowRadius = 10
    }

    
}

