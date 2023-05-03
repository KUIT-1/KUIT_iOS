//
//  MyCell.swift
//  Week5
//
//  Created by 이안진 on 2023/05/03.
//

import UIKit

class MyCell: UITableViewCell {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var grade: UILabel!
    
    @IBOutlet weak var minimumOrderAmount: UILabel!
    @IBOutlet weak var deliveryInfo: UILabel!
    // viewDidLoad와 유사
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
