//
//  ViewController1.swift
//  week5
//
//  Created by 황재상 on 2023/04/28.
//

import UIKit

class ViewController1: UIViewController { // 두번째 화면(데이터를 보낼 화면)
    
    @IBOutlet weak var TF: UITextField!
    var delegate: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        delegate?.dataSend(textData: TF.text ?? "")
    }

    
}

protocol dataDelegate{
    func dataSend(textData: String)
}
