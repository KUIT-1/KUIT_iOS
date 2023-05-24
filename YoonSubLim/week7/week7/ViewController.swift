//
//  ViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/20.
//

import Security // for keychain
import UIKit
import CoreData

class ViewController: UIViewController {
    
    // 간단한 데이터 -> UserDefaults
    // 조금 큰 데이터 -> CoreData
    // 보안에 필요한 데이터 -> KeyChain
    // 방대한 데이터 -> 데이터베이스 시스템

    @IBOutlet weak var SW1: UISwitch!
    @IBOutlet weak var SW2: UISwitch!
    @IBOutlet weak var SW3: UISwitch!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // [key : value] 설정 set
        // 한번 설정해놓으면 앱을 껐다켜도 저장되어 있다.
        UserDefaults.standard.set(true, forKey: "switch1")
        UserDefaults.standard.set(2, forKey: "number2")
    
        // 불러오기
        print(UserDefaults.standard.bool(forKey: "number2"))
        print(UserDefaults.standard.integer(forKey: "switch1"))
        
        // Load
        SW1.isOn = UserDefaults.standard.bool(forKey: "SW1")
        SW2.isOn = UserDefaults.standard.bool(forKey: "SW2")
        SW3.isOn = UserDefaults.standard.bool(forKey: "SW3")
        
        textLabel.text = UserDefaults.standard.string(forKey: "saveText")
        
        var test = ClassStruct(semester: 2, name: "iOS", department: "KUIT", courseID: 12345)
        
        // CoreData
//        coredataSave()
        coredataLoad()
        
        
        // Keychain
//        saveKeyChain(id: "test1", password: "12345678")
        let savedPassword = fetchFromKeychain(id: "test1")
        
        if savedPassword != nil{
            print(savedPassword!)
        }
        
    }

    @IBAction func sw1_tap(_ sender: Any) {
        print(SW1.isOn)
        UserDefaults.standard.set(SW1.isOn, forKey: "SW1")
    }
    
    @IBAction func sw2_tap(_ sender: Any) {
        print(SW2.isOn)
        UserDefaults.standard.set(SW2.isOn, forKey: "SW2")
    }
    
    @IBAction func sw3_tap(_ sender: Any) {
        print(SW3.isOn)
        UserDefaults.standard.set(SW3.isOn, forKey: "SW3")
    }
    
    @IBAction func save(_ sender: Any) {
        textLabel.text = textField.text
        UserDefaults.standard.set(textField.text, forKey: "saveText")
    }
    
    // CoreData //
    // 저장
    func coredataSave(){
        var test = ClassStruct(semester: 2, name: "iOS", department: "KUIT", courseID: 12345)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let container = appDelegate.persistentContainer.viewContext
        let classEntity = NSEntityDescription.entity(forEntityName: "Class", in: container)
        
        if let classEntity = classEntity{
            let tmp = NSManagedObject(entity: classEntity, insertInto: container)
            tmp.setValue(test.semester, forKey: "semester")
            tmp.setValue(test.name, forKey: "name")
            tmp.setValue(test.department, forKey: "department")
            tmp.setValue(test.courseID, forKey: "courseID")
            
            do{
                // container 에 Entity 저장
                try container.save()
                print("save success")
            }catch{
                print(error.localizedDescription)
            }
        }
    }
    
    // 불러오기
    func coredataLoad(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let container = appDelegate.persistentContainer.viewContext
        
        do{
            let classes = try container.fetch(Class.fetchRequest()) as! [Class]
            classes.forEach{
                print($0.semester)
                print($0.name ?? "")
                print($0.department ?? "")
                print($0.courseID)
            }
        }catch{
            print(error.localizedDescription)
        }
    }
    
    // semester - int
    // name - string
    // department - string
    // courseID - int

    let serviceId = "yooonsublim.week7" // Bundle ID
    
    // keychain Save
    func saveKeyChain(id: String, password: String){
        guard let data = password.data(using: .utf8) else{
            print("변환 오류")
            return
        }
        
        // 딕셔너리 타입
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword, // 키체인 아이템 클래스 타입
            kSecAttrService as String: serviceId, // 서비스 아이디 // 앱 번들 아이디
            kSecAttrAccount as String: id, // 저장할 아이템의 계정 이름
            kSecValueData as String: data, // 저장할 아이템의 데이터를 Data Type 으로 형변환하여 전달
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlocked // 저장한 데이터에 접근할 수 있는 시점 -> 기기의 잠금 해제됐을 때 가능
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
        
        // query 기반으로 copy 해온 값이
        let status = SecItemCopyMatching(query as CFDictionary, &item)
        
        // success 라면 내용 까보기
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
            print("unknown error")
        }
        
        return nil
    }
    
    // 7주차 미션
    @IBAction func nextViewBtnTab(_ sender: Any) {
        let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "ColorVC")
        
        self.navigationController?.pushViewController(nextVC!, animated: true)
    }
    
}

struct ClassStruct{
    var semester: Int
    var name: String
    var department: String
    var courseID: Int
}

