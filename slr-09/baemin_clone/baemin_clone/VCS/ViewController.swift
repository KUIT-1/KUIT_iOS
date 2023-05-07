//
//  ViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBarView: UIView!
    
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderLabel: UILabel!
    
    @IBOutlet weak var order1View: UIView!
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1Label: UILabel!
    
    @IBOutlet weak var packageView: UIView!
    
    @IBOutlet weak var BmartView: UIView!
    
    @IBOutlet weak var freshFoodView: UIView!
    
    @IBOutlet weak var BMStoreView: UIView!
    
    override func loadView() {
        super.loadView()
        print("loadView")
    }
    
    // 화면이 나타날 준비가 되었을 때
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        
        orderButtonInit()
        navigationBarInit()
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
    
    func navigationBarInit() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor = UIColor(named: "BMMint")
//        navigationItem.standardAppearance = appearance
//        navigationItem.scrollEdgeAppearance = appearance
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
}

