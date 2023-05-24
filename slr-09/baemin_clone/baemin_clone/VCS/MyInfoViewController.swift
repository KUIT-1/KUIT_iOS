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
    
    @IBOutlet weak var logoutBtn: UIButton!
    
    @IBOutlet weak var emailLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        border()
        
        emailLabel.text = UserDefaults.standard.string(forKey: "id")
        
    }
    
    
    @IBAction func logout(_ sender: Any) {
        // 저장된 id, pw 삭제
        UserDefaults.standard.removeObject(forKey: "id")
        UserDefaults.standard.removeObject(forKey: "pw")
        
        // 이전 화면으로 이동
        self.navigationController?.popViewController(animated: true)
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
