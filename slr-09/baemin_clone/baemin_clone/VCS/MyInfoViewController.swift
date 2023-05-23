//
//  MyInfoViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/05/24.
//

import UIKit

class MyInfoViewController: UIViewController {

    @IBOutlet weak var nicknameView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var phnumberView: UIView!
    @IBOutlet weak var loginDeviceView: UIView!
    @IBOutlet weak var serviceView: UIView!
    @IBOutlet weak var socialView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        border()
    }
    

    func border(){
        nicknameView.layer.borderColor = UIColor.lightGray.cgColor
        nicknameView.layer.cornerRadius = 10
        nicknameView.layer.borderWidth = 0.2
        nicknameView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMinYCorner)
        
        emailView.layer.borderColor = UIColor.lightGray.cgColor
        emailView.layer.borderWidth = 0.2
        
        phnumberView.layer.borderColor = UIColor.lightGray.cgColor
        phnumberView.layer.cornerRadius = 10
        phnumberView.layer.borderWidth = 0.2
        phnumberView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMaxYCorner, .layerMaxXMaxYCorner)
        
        loginDeviceView.layer.borderColor = UIColor.lightGray.cgColor
        loginDeviceView.layer.cornerRadius = 10
        loginDeviceView.layer.borderWidth = 0.2
        
        serviceView.layer.borderColor = UIColor.lightGray.cgColor
        serviceView.layer.cornerRadius = 10
        serviceView.layer.borderWidth = 0.2
        
        socialView.layer.borderColor = UIColor.lightGray.cgColor
        socialView.layer.cornerRadius = 10
        socialView.layer.borderWidth = 0.2
        
    }
    

}
