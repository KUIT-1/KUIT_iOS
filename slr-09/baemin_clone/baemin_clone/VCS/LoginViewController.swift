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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        socialLoginBtn()
        
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
