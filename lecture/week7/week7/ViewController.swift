//
//  ViewController.swift
//  week7
//
//  Created by 황재상 on 2023/05/13.
//

import Security
import CoreData
import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var SW1: UISwitch!
    @IBOutlet weak var SW2: UISwitch!
    @IBOutlet weak var SW3: UISwitch!
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // userdefaults
        SW1.isOn = UserDefaults.standard.bool(forKey: "SW1")
        SW2.isOn = UserDefaults.standard.bool(forKey: "SW2")
        SW3.isOn = UserDefaults.standard.bool(forKey: "SW3")
        
        textLabel.text = UserDefaults.standard.string(forKey: "saveText")
        
        //coredata
//        coredataLoad()
        
//        saveKeychain(id: "test1", password: "12345678")
        let savedPassword = fetchFromKeychain(id: "test2")
        
        if savedPassword != nil {
            print(savedPassword!)
        }
    }
    
    @IBAction func tap1(_ sender: Any) {
        UserDefaults.standard.set(SW1.isOn, forKey: "SW1")
    }
    
    @IBAction func tap2(_ sender: Any) {
        UserDefaults.standard.set(SW2.isOn, forKey: "SW2")
    }
    
    @IBAction func tap3(_ sender: Any) {
        UserDefaults.standard.set(SW3.isOn, forKey: "SW3")
    }
    
    @IBAction func save(_ sender: Any) {
        textLabel.text = textField.text
        UserDefaults.standard.set(textField.text, forKey: "saveText")
    }
    
    func coredataSave(){
        var test  = ClassStruct(semester: 2, name: "iOS", department: "KUIT", courseID: 12345)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let container = appDelegate.persistentContainer.viewContext
        let classEntity = NSEntityDescription.entity(forEntityName: "Class", in: container)
        
        if let classEntity = classEntity {
            let tmp = NSManagedObject(entity: classEntity, insertInto: container)
            tmp.setValue(2, forKey: "semester")
            tmp.setValue("iOS", forKey: "name")
            tmp.setValue("KUIT", forKey: "department")
            tmp.setValue(12345, forKey: "courseID")
            
            do {
                try container.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func coredataLoad(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let container = appDelegate.persistentContainer.viewContext
        
        do {
            let classes = try container.fetch(Class.fetchRequest()) as! [Class]
            classes.forEach {
                print($0.semester)
                print($0.name ?? "")
                print($0.department ?? "")
                print($0.courseID)
            }
        } catch {
            print(error.localizedDescription)
        }
    }

    let serviceId = "jxx-sx.week7"
    
    func saveKeychain(id: String, password: String){
        guard let data = password.data(using: .utf8) else{
            print("변환 오류")
            return
        }
        
        let query: [String: Any] = [
            kSecClass as String: kSecClassGenericPassword,
            kSecAttrService as String: serviceId,
            kSecAttrAccount as String: id,
            kSecValueData as String: data,
            kSecAttrAccessible as String: kSecAttrAccessibleWhenUnlocked
        ]
        
        let status = SecItemAdd(query as CFDictionary, nil)
        
        if status == errSecSuccess {
            print("정상적으로 추가됨")
        } else if status == errSecDuplicateItem {
            let status2 = SecItemUpdate(query as CFDictionary, [kSecValueData as String: data] as CFDictionary)
            if status2 == errSecSuccess {
                print("정상적으로 업데이트됨")
            } else {
                print("업데이트 실패")
            }
        } else {
            print("추가 실패")
        }
    }
    
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
        
        if status == errSecSuccess {
            if let itemDict = item as? [String: Any],
               let passwordData = itemDict[kSecValueData as String] as? Data,
               let password = String(data: passwordData, encoding: .utf8){
                print("데이터 검색 성공")
                return password
            }
        } else if status == errSecItemNotFound {
            print("데이터 없음")
        } else {
            print("error")
        }
        
        return nil
    }
}

struct ClassStruct{
    var semester: Int
    var name: String
    var department: String
    var courseID: Int
}

