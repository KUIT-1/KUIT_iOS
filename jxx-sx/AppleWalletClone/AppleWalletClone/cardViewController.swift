//
//  cardViewController.swift
//  AppleWalletClone
//
//  Created by 황재상 on 2023/03/27.
//

import UIKit

class cardViewController: UIViewController {

    @IBOutlet weak var text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        text.text = "Apple Pay를 사용하여 Face ID로 결제할 수 있습니\n다. 매장 및 앱 내에서 카드를 긁거나 카드 및 배송정보\n를 입력하지 않고 결제할 수 있습니다."
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
