//
//  tabbarCollectionViewCell.swift
//  baemin_clone
//
//  Created by 가은 on 2023/05/10.
//

import UIKit

class tabbarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var name: UILabel!
    
    override var isSelected: Bool {
        
        willSet {
            if newValue{
                name.textColor = .black
            }else{
                name.textColor = .gray
            }
        }
    }
    
}
