//
//  ViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/20.
//

import UIKit
import CoreData

class ViewController: UIViewController {

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


}

struct ClassStruct{
    var semester: Int
    var name: String
    var department: String
    var courseID: Int
}

