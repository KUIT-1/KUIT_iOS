//
//  ShopCell.swift
//  baemin_clone
//
//  Created by 가은 on 2023/05/07.
//

import UIKit

class ShopCell: UITableViewCell {

    
    @IBOutlet weak var shopImage: UIImageView!
    @IBOutlet weak var shopName: UILabel!
    
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var deliveryTime: UILabel!
    @IBOutlet weak var deliveryTip: UILabel!
    @IBOutlet weak var minDeliverCost: UILabel!
    
    
    // 셀이 만들어졌을 떄 어떤 일을 수행해야하는지 / viewDidLoad와 유사
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        shopImage.layer.cornerRadius = 10
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
