//
//  ViewController.swift
//  week4
//
//  Created by YoonSub Lim on 2023/04/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("[Main] viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("[Main] viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("[Main] viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("[Main] viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("[Main] viewDidDisappear")
    }
    
    
    @IBAction func loginButtonTab(_ sender:Any){
        print("로그인 버튼 클릭")
        
        // 로그인 스토리보드 찾기
        let loginSB = UIStoryboard(name: "Login", bundle: nil)
        print("@@@1")
        let loginVC = loginSB.instantiateViewController(withIdentifier: "login")
        print("@@@2")

        self.navigationController?.pushViewController(loginVC, animated: true)
        
    }

}

