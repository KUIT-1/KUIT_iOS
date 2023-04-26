//
//  LoginViewController.swift
//  week4
//
//  Created by YoonSub Lim on 2023/04/26.
//

import UIKit

class LoginViewController: UIViewController {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[Login] viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("[Login] viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("[Login] viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("[Login] viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("[Login] viewDidDisappear")
    }
    
    
    @IBAction func loginButtonTab(_ sender: Any) {
        print("로그인 버튼 클릭")
    }
    
    @IBAction func searchIDButtonTab(_ sender: Any) {
        print("아이디 찾기 버튼 클릭")
    }
    
    @IBAction func searchPWButtonTab(_ sender: Any) {
        print("비밀번호 찾기 버튼 클릭")
    }
    
    @IBAction func facebookLoginButtonTab(_ sender: Any) {
        print("페이스북 로그인 버튼 클릭")
    }
    
    @IBAction func naverLoginButtonTab(_ sender: Any) {
        print("네이버 로그인 버튼 클릭")
    }
 
    @IBAction func appleLoginButtonTab(_ sender: Any) {
        print("Apple 로그인 버튼 클릭")
    }
    
    
}
