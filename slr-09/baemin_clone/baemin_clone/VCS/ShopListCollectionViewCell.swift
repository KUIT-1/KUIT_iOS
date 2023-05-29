//
//  ShopListCollectionViewCell.swift
//  baemin_clone
//
//  Created by 가은 on 2023/05/10.
//

import UIKit

class ShopListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var testName: UILabel!
    
    lazy var backColor: [UIColor] = [.lightGray, .purple, .orange, .cyan, .magenta]
    

    func setColor(index: Int){
        self.backgroundColor = backColor[index]
    }
}
