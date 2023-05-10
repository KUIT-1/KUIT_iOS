//
//  OrderCollectionViewCell.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class OrderCollectionViewCell: UICollectionViewCell {
        
    @IBOutlet weak var categoryName: UILabel!
    
    override var isSelected: Bool{
        didSet{
            if isSelected{
                print(categoryName.text!)
                categoryName.textColor = UIColor(ciColor: .red)
                
                // 기존의 모든 tableviewcell 들을 날리고, 새로 그려줘야 함.
                
                
            }
            else{
                print(categoryName.text! + "해제")
                categoryName.textColor = UIColor(ciColor: .gray)
            }
        }

    }
    
}
