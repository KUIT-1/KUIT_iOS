//
//  ViewController1.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/02.
//

import UIKit

// 두번째 화면 (데이터를 보낼 화면)
class ViewController1: UIViewController {

    @IBOutlet weak var TF: UITextField!
    var delegate: ViewController? // 메인 VC 에서 지정할 것임
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    // 화면 사라질 때 데이터 전송
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.dataSend(textData: TF.text ?? "")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// 데이터 전송(위임)을 위한 프로토콜
protocol dataDelegate{
    func dataSend(textData: String)
}
