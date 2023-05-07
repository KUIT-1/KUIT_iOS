//
//  ViewController.swift
//  week5
//
//  Created by 황재상 on 2023/04/27.
//

import UIKit

class ViewController: UIViewController, Person, dataDelegate{    // 첫번째 화면(데이터를 받을 화면)
    @IBOutlet weak var LB: UILabel!
    var storage: String = ""
    
    func dataSend(textData: String) {
        LB.text = textData
        storage = textData
    }
    
    
    var first_name: String = ""
    var last_name: String = ""
    func get_name(){
        print("name : " + self.first_name + self.last_name)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print(storage)
    }
    
    @IBAction func BT(_ sender: Any) {
        let VC1 = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! ViewController1
        VC1.delegate = self
        
        self.navigationController?.pushViewController(VC1, animated: true)
    }
    
    
    var test1: Int = 1 //읽기, 쓰기
    let test2: Int = 2 //읽기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(test1.is_odd)
    }
    
    
}

//사람
// 성, 이름 -> 프로퍼티
// 전체이름 -> 함수

protocol Person{
    var first_name: String { get } // var, let
    var last_name: String { get set }//var
    
    func get_name()
}

extension Int{
    var is_odd: Bool{
        return self % 2 == 1
    }
}

extension Person{
    //연산 프로퍼티
    
    var first_name: String{
        return "first"
    }
    
    func get_name(){
        print(self.first_name + self.last_name)
    }
}
