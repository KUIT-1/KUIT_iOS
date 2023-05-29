//
//  ViewController1.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/23.
//

import UIKit
import Security

// Login Storyboard 파일을 copy & add 하고,
// Asset 을 추가해준 후, 기존 connection 을 다 끊어주었다.
// 그리고 로그인 관련 코드만 보여주기 위해,
// first storyboard 설정을 info.plist 에서 Main -> Login 로 변경

class LoginViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let serviceId = "yooonsublim.week7" // Bundle ID
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        checkAutoLogin()
        
        // 1. 자동 로그인
        // DB 조회 : UserDefaults 에 있으면
        // 화면 전환 : Main VC
        
        // 2. 자동 로그인 실패시
        // 로그인 처리 : Login VC
        // DB 저장 : saveKeychain & UserDefaults set
        // 화면 전환 : Main VC
        
    }
    
    func checkAutoLogin() {
        // Keychain에서 로그인 정보 가져오기
    
        // 아이디 가져오고
        if let email = UserDefaults.standard.string(forKey: "lastLoginedId"), !email.isEmpty{
            print("가져온 아이디 : " + email)
            
            // https://stackoverflow.com/questions/32292600/swift-performseguewithidentifier-not-working
            DispatchQueue.main.async(){
                self.performSegue(withIdentifier: "moveMainLogic", sender: self)
            }
            
        }else{
            // 자동 로그인 실패. 로그인 필요
            print("???")
//            let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "loginVC")
//
//            self.navigationController?.pushViewController(nextVC!, animated: true)
        }
        print("??")
        
    }
    
    
    @IBAction func loginBtnTab(_ sender: Any) {
            
        // login 버튼 클릭
        if let email = emailField.text, let password = passwordField.text, !email.isEmpty && !password.isEmpty{
            
            print(email, password)
            
            // 로그인 처리
            saveKeyChain(id: email, password: password)
            UserDefaults.standard.set(email, forKey: "lastLoginedId")
            
            performSegue(withIdentifier: "moveMainLogic", sender: self)

        }else{
            let sheet = UIAlertController(title: "경고", message: "이메일과 비밀번호를 모두 입력해주세요", preferredStyle: .alert)
            sheet.addAction(UIAlertAction(title: "확인", style: .destructive, handler: { _ in print("yes 클릭") }))
            present(sheet, animated: true)
        }
        print("!!!")
    }

    // keychain Save
    func saveKeyChain(id: String, password: String){
        guard let data = password.data(using: .utf8) else{
            print("변환 오류")
            return
        }
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword, // 키체인 아이템 클래스 타입
            kSecAttrService as String: serviceId, // 서비스 아이디 // 앱 번들 아이디
            kSecAttrAccount as String: id, // 저장할 아이템의 계정 이름
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlocked
            // kSecAttrGeneric // 임의의 데이터를 저장할 수 있는 속성
        ]
        
        let status = SecItemAdd(query as CFDictionary, nil)
        
        if status == errSecSuccess{
            print("정상적으로 추가됨")
        }else if status == errSecDuplicateItem{
            // 업데이트
            let status2 = SecItemUpdate(query as CFDictionary, [kSecValueData as String: data] as CFDictionary)
            
            if status2 == errSecSuccess{
                print("정상적으로 업데이트됨")
            }else{
                print("업데이트 실패")
            }
        }else{
            print("추가 실패")
        }
        
    }
    
}
