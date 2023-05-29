//
//  MyPageViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/24.
//

import UIKit

class MyPageViewController: UIViewController {
    
    let serviceId = "yooonsublim.week7" // Bundle ID

    @IBOutlet weak var myPassword: UILabel!
    @IBOutlet weak var myEmail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initialInformation()

    }
    
    @IBAction func logoutBtnTap(_ sender: Any) {
        
        print("logoutBtn clicked")
        
        UserDefaults.standard.removeObject(forKey: "lastLoginedId")
        
        DispatchQueue.main.async(){
            self.performSegue(withIdentifier: "moveLoginVC", sender: self)
        }
        
    }
    
    func initialInformation(){
        if let email = UserDefaults.standard.string(forKey: "lastLoginedId"){
            myEmail.text = email

            if let password = fetchFromKeychain(id: email){
                myPassword.text = password
            }else{
                myPassword.text = "[error] find 실패"
            }

        }else{
            myPassword.text = "[error] find 실패"
            myEmail.text = "[error] find 실패"
        }
        
    }
    
    // keychain Load
    func fetchFromKeychain(id: String) -> String? {
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceId,
            kSecAttrAccount as String: id,
            kSecMatchLimit as String: kSecMatchLimitOne,
            kSecReturnAttributes as String: true,
            kSecReturnData as String: true
        ]
        
        var item: CFTypeRef?
        
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        
        if status == errSecSuccess{
            if let itemDict = item as? [String: Any],
               let passwordData = itemDict[kSecValueData as String] as? Data,
               let password = String(data: passwordData, encoding: .utf8){
                print("검색 성공 pass : " + password)
                return password
            }
        }else if status == errSecItemNotFound{
            print("데이터 없음")
        }else{
            print("error")
        }
        
        return nil
    }
    
}
