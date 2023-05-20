//
//  ViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/20.
//

import UIKit

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
    

}

