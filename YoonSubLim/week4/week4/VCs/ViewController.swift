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
        
        title = "Navigation Bar"
        
        //        self.navigationController?.navigationBar.isHidden = false
        self.navigationController?.navigationBar.backgroundColor = .systemMint
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.isTranslucent = false // 빈공간 채우기
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black, .backgroundColor: UIColor.white]
        
        self.navigationController?.navigationBar.tintColor = .gray
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("[Main] viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("[Main] viewWillDisappear")
        
//        self.navigationController?.navigationBar.isHidden = false
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
        
        
        // Optional 값을 출력해보자.
        print()
        print()
        print("Optional 값을 출력해보자.")
        print()
        
        var optionalStringNil: String? = nil
        var optionalStringSub: String? = "Sub"
        
        // 1. 그냥 print
        print(optionalStringNil)
        print(optionalStringSub)
        print(optionalStringSub!)
        print()
        
        // 2. if let
        print("optionalStringNil 의 값은 ?")
        if let printString = optionalStringNil{
            print(printString + " 이네요.")
        }else{
            print("nil 이네요")
        }
        print()
        
        // 3.
        
        print("optionalStringSub 의 값은 ?")
        if let printString = optionalStringSub{
            print(printString + " 이네요.")
        }else{
            print("nil 이네요")
        }
        
        // 3. guard
        guard let printString0 = optionalStringSub else { return }
//        guard let printString1 = optionalStringNil else { return }
        print(printString0) // 전역변수로 활용가능하다.
        print()
        
    }

}

