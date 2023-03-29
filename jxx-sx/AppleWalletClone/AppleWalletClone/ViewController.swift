//
//  ViewController.swift
//  AppleWalletClone
//
//  Created by 황재상 on 2023/03/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ApplePayCard: UIView!
    @IBOutlet weak var ApplePayCard2: UIView!
    
    
    @IBOutlet weak var PlusButton: UIButton!
    @IBOutlet weak var BoxButton: UIButton!
    @IBOutlet weak var AddButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UIView.layer.cornerRadius : 모서리의 둥근 값
        //UIView.layer.maskedCorners : 둥근 모서리를 적용할 부위
        ApplePayCard.layer.cornerRadius = 20
        ApplePayCard2.layer.cornerRadius = 20
        ApplePayCard2.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        
        
        //UIButton.layer.cornerRadius : 모서리의 둥근 값
        PlusButton.layer.cornerRadius = PlusButton.frame.height / 2
        BoxButton.layer.cornerRadius = BoxButton.frame.height / 2
        AddButton.layer.cornerRadius = AddButton.frame.height / 2
    }
    
    @IBAction func PlusButtonTap(_ sender: Any) {
        print("plus")
    }
    
    @IBAction func BoxButtonTap(_ sender: Any) {
        print("box")
    }

    @IBAction func AddButtonTap(_ sender: Any) {
        print("add")
    }
}

