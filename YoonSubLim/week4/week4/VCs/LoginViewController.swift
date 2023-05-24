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
    
    @IBOutlet weak var faceLoginBtn: UIButton!
    @IBOutlet weak var naverLoginBtn: UIButton!
    @IBOutlet weak var appleLoginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[Login] viewDidLoad")
        
        // Life Cycle 함수를 활용해 개선할 수 있는 부분 개선하기
        socialLoginBtnInit()
        
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
    
    func socialLoginBtnInit(){
        faceLoginBtn.layer.borderWidth = 2
//        faceLoginBtn.layer.borderColor = Color
        naverLoginBtn.layer.borderWidth = 2
        appleLoginBtn.layer.borderWidth = 2


//
//        // 텍스트 변경
//        orderLabel.text = "세상은 넓고\n맛집은 많다"
//
//        // 각 굴절
//        orderBG.layer.cornerRadius = 10
//        orderView.layer.cornerRadius = 10
//
//        // 그림자
//        orderView.layer.shadowColor = UIColor.black.cgColor
//        orderView.layer.shadowRadius = 10
//        orderView.layer.shadowOpacity = 0.1
    }
}
