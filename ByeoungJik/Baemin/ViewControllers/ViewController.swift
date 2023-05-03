//
//  ViewController.swift
//  Baemin
//
//  Created by byeoungjik on 2023/04/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderLabel: UILabel!
    @IBOutlet weak var orderView: UIView!
    
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1Label: UILabel!
    @IBOutlet weak var order1View: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        orderButtonInit()
        
    }
    
    @IBAction func orderButtonTap(_ sender: Any) {
        //배달화면
        let orderSB = UIStoryboard(name: "Order", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "order")
        self.navigationController?.pushViewController(orderVC, animated: true)
    }
    
    @IBAction func order1ButtonTap(_ sender: Any) {
        
    }
    func orderButtonInit(){
        
        orderLabel.text = "세상은 넓고\n맛집은 많다"
        orderView.layer.cornerRadius = 10
        orderBG.layer.cornerRadius = 10
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowRadius = 10
        orderView.layer.shadowOpacity = 0.1
        
        order1Label.text = "한 번에 한 집만\n빠르게"
        order1View.layer.cornerRadius = 10
        order1BG.layer.cornerRadius = 10
        order1View.layer.shadowColor = UIColor.black.cgColor
        order1View.layer.shadowRadius = 10
        order1View.layer.shadowOpacity = 0.1
    }
    
    
}
