//
//  VC2ViewController.swift
//  Week3
//
//  Created by 이안진 on 2023/04/04.
//

import UIKit

class VC2ViewController: UIViewController {

    @IBOutlet weak var titleLable: UILabel!
    var titleText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.text = titleText
        // Do any additional setup after loading the view.
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
