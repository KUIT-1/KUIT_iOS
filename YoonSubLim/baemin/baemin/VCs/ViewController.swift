//
//  ViewController.swift
//  baemin
//
//  Created by YoonSub Lim on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {

    // 배민1 버튼
    @IBOutlet weak var order1View: UIView!
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1Label: UILabel!
    
    // 배달 버튼
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        baeminOneButtonInit()
        orderButtonInit()
    }
    
    @IBAction func baeminOneButtonTab(_ sender: Any) {
        print("배민1 버튼 클릭")
    }
    
    @IBAction func orderButtonTab(_ sender: Any) {
        // 주문 버튼 클릭시 화면 전환
        print("배달 버튼 클릭")
        let orderSB = UIStoryboard(name: "Order", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "order")
        
        self.navigationController?.pushViewController(orderVC, animated: true)
    }
    
    func baeminOneButtonInit(){
        
        // 텍스트 변경
        order1Label.text = "한 번에 한 집만\n빠르게 배달해요!"
        
        // 각 굴절
        order1BG.layer.cornerRadius = 10
        order1View.layer.cornerRadius = 10

        // 그림자
        order1View.layer.shadowColor = UIColor.black.cgColor
        order1View.layer.shadowRadius = 10
        order1View.layer.shadowOpacity = 0.1
    }

    func orderButtonInit(){
        
        // 텍스트 변경
        orderLabel.text = "세상은 넓고\n맛집은 많다"
        
        // 각 굴절
        orderBG.layer.cornerRadius = 10
        orderView.layer.cornerRadius = 10

        // 그림자
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowRadius = 10
        orderView.layer.shadowOpacity = 0.1
    }

}

