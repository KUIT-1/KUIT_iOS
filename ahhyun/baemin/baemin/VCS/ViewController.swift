//
//  ViewController.swift
//  baemin
//
//  Created by 정아현 on 2023/04/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderLabel: UILabel!
    
    
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1View: UIView!
    @IBOutlet weak var order1Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*orderButtonInit()
        order1ButtonInit()*/
        //navigationBarInit()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear1")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear1")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear1")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear1")
    }
    

    
    @IBAction func login(_ sender: Any) {
        let loginSB = UIStoryboard(name: "Login", bundle: nil)
                let loginVC = loginSB.instantiateViewController(withIdentifier: "Login")
                loginVC.modalPresentationStyle = .fullScreen
                self.present(loginVC, animated: true)    }
    
    
    
    @IBAction func order1ButtonTap(_ sender: Any) {
        //배민1 화면
    }
    @IBAction func orderButtonTap(_ sender: Any) {
        //배달 화면
        let orderSB = UIStoryboard(name: "Order", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "order")
        
        self.navigationController?.pushViewController(orderVC, animated: true)
    }
    
    /*
    func orderButtonInit(){
        orderLabel.text = "세상은 넓고\n맛집은 많다"
        orderBG.layer.cornerRadius = 10
        orderView.layer.cornerRadius = 10
        orderView.layer.shadowColor = UIColor.black.cgColor
        orderView.layer.shadowOpacity = 0.1
        orderView.layer.shadowRadius = 10
    }
    
    func order1ButtonInit(){
        order1Label.text = "한번에 한 집만\n빠르게 배달해요!"
        order1BG.layer.cornerRadius = 10
        order1View.layer.cornerRadius = 10
        order1View.layer.shadowColor = UIColor.black.cgColor
        order1View.layer.shadowOpacity = 0.1
        order1View.layer.shadowRadius = 10
    }*/

}
