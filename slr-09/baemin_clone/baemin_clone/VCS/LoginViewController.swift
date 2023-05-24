//
//  LoginViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var FacebookLoginView: UIView!
    @IBOutlet weak var AppleLoginView: UIView!
    @IBOutlet weak var NaverLoginView: UIView!
    
    @IBOutlet weak var idTF: UITextField!
    @IBOutlet weak var pwTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        socialLoginBtn()
        
        if let userId = UserDefaults.standard.string(forKey: "id") {
            print(userId)
            print(UserDefaults.standard.string(forKey: "pw")!)
        }
        
    }
    
    func loginSuccess(id: String, pw: String) -> Bool{
        
        
        return true
    }
    
    @IBAction func login(_ sender: Any) {
        if loginSuccess(id: idTF.text!, pw: pwTF.text!) {
            UserDefaults.standard.set(idTF.text, forKey: "id")
            UserDefaults.standard.set(pwTF.text, forKey: "pw")
            // 이전 화면으로 이동 
            self.navigationController?.popViewController(animated: true)
        }
        
    }
    
    func socialLoginBtn() {
        FacebookLoginView.layer.cornerRadius = 5
        FacebookLoginView.layer.borderWidth = 1
        FacebookLoginView.layer.borderColor = UIColor.lightGray.cgColor
        
        AppleLoginView.layer.cornerRadius = 5
        AppleLoginView.layer.borderWidth = 1
        AppleLoginView.layer.borderColor = UIColor.lightGray.cgColor
        
        NaverLoginView.layer.cornerRadius = 5
        NaverLoginView.layer.borderWidth = 1
        NaverLoginView.layer.borderColor = UIColor.lightGray.cgColor
    }
    
    
}
