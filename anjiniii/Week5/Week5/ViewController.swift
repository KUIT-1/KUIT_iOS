//
//  ViewController.swift
//  Week5
//
//  Created by 이안진 on 2023/05/02.
//

import UIKit

class ViewController: UIViewController, Person, DataDelegate {
    
    @IBOutlet weak var label: UILabel!
    func sendData(textData: String) {
        label.text = textData
    }
    @IBAction func button(_ sender: Any) {
        let VC1 = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! ViewController1
        VC1.delegate = self
        
        self.navigationController?.pushViewController(VC1, animated: true)
    }
    
    
    var firstName: String = ""
    var lastName: String = ""
    func getName() {
        print("name: \(self.firstName)\(self.lastName)")
    }
    
    
    var test1: Int = 1
    let test2: Int = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(test1.isOdd)
    }


}

protocol Person {
    var firstName: String { get } // 읽기만이라서 var, let 모두 가능
    var lastName: String { get set } // 읽고 쓰기도 가능해야해서 var만 가능
    
    func getName()
}

extension Int {
    var isOdd: Bool {
        return self % 2 == 1
    }
}

extension Person {
    func getName() {
        print(self.firstName + self.lastName)
    }
}
