//
//  ViewController.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/02.
//

import UIKit

// 첫번째 화면 (데이터를 받을 화면)
class ViewController: UIViewController, protocol_Person, dataDelegate {
    
    @IBOutlet weak var LB: UILabel!
    var printString: String = ""
    
    override func viewDidAppear(_ animated: Bool) {
        print(printString)
    }
    
    @IBAction func BT(_ sender: Any) {
        let VC1 = self.storyboard?.instantiateViewController(withIdentifier: "VC1") as! ViewController1
        
        // VC1 에서 일을 대신할 대신자는 self 나야
        VC1.delegate = self
        
        self.navigationController?.pushViewController(VC1, animated: true)
        
    }
    
    // 프로토콜 채택
    func dataSend(textData: String) {
        LB.text = textData
        printString = textData
    }
    
    
    var first_name: String  = "김" // first_name 은 get 이므로, var / let 모두 선언 가능하다.
//    let first_name: String  = ""
    
    
    var last_name: String = "땡땡"
    
//    func get_fullName() {
//        print(self.first_name + self.last_name + " 입니다.")
//    } // -> extension 으로 대체 // 필요시 여기서 재정의해도 된다. 우선순위가 높아서 대체됨.

    var test1: Int = 1 // var : 가변 // 읽기, 쓰기
    let test2: Int = 2 // let : 불변 // 읽기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        test1 = 2
//        test2 = 1 // 불가
        
        print(test1.isOdd)
        get_fullName()
        
    }


}

// 사람
// 성, 이름 -> 프로퍼티
// 전체이름 -> 함수

protocol protocol_Person{
    // var 변수명: 변수타입 { get set }
    // 변수 선언에는 var, let 등이 있지만, 프로토콜에서는 var 를 사용해야 한다.
    var first_name: String { get } // 읽을 수 있다. -> 구현 시 var, let 가능
    var last_name: String { get set } // 읽고 쓸 수 있다. -> 구현시 let 만 가능
    
    func get_fullName()
}

extension Int{ // 이름 X. 정수에 대한 확장이다.
    var isOdd:Bool{
        return self % 2 == 1
    }
    
}

// 위의 경우와 마찬가지로, 프로토콜에 대한 extension 을 만들어, 기본적인 함수 내용을 구현하자.
extension protocol_Person{
    
    // 연산 프로퍼티
    var first_name: String{
        return "first"
    }
    
    func get_fullName(){
        print(self.first_name + self.last_name)
    }
}

