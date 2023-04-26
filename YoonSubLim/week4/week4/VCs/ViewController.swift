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
        // guard let 으로 감싸려 했으나, UIStoryboard 는 Optional 값이 아니고, 못 찾을 경우에는 nil이 아닌에러를 던짐
        do {
            print("@@@1")
            let loginSB = try UIStoryboard(name: "Login", bundle: nil)
            
            print("@@@2")
            let loginVC = loginSB.instantiateViewController(withIdentifier: "login")
            self.navigationController?.pushViewController(loginVC, animated: true)
            
        } catch {
            // handle the error here
            print("Unable to initialize storyboard: \(error.localizedDescription)")
        }
        
//        guard let loginVC2 = self.storyboard?.instantiateViewController(withIdentifier: "test") else { return }
        
        
    }

}

