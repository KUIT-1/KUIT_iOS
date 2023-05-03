//
//  MainViewController.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/03.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var upperBackgroundView: UIView!
    
    @IBOutlet weak var TF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*
         메인 화면 init
         */
        
        // 민트 view round
        upperBackgroundView.clipsToBounds = true
        upperBackgroundView.layer.cornerRadius = 10
        upperBackgroundView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMaxYCorner, .layerMaxXMaxYCorner)
        
        // 검색창 border 안보이게
        TF.borderStyle = UITextField.BorderStyle.none

        
    }
    



}
