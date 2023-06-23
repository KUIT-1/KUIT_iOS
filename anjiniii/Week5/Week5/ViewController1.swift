//
//  ViewController1.swift
//  Week5
//
//  Created by 이안진 on 2023/05/03.
//

import UIKit

class ViewController1: UIViewController {
    @IBOutlet weak var textField: UITextField!
    var delegate: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        delegate?.sendData(textData: textField.text ?? "")
    }
}

protocol DataDelegate {
    func sendData(textData: String)
}
