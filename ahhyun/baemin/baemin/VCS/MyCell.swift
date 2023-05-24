//
//  MyCell.swift
//  baemin
//
//  Created by 정아현 on 2023/05/01.
//

import UIKit

class MyCell: UITableViewCell{

    
    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Star: UILabel!
    @IBOutlet weak var Delivery: UILabel!
    @IBOutlet weak var DeliveryTip: UILabel!
    @IBOutlet weak var Min: UILabel!
    
    
    override func awakeFromNib() { //view did load와 유사
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        print("selected")

        // Configure the view for the selected state
    }

}
