//
//  StoreListTableViewCell.swift
//  baemin
//
//  Created by 황재상 on 2023/05/01.
//

import UIKit

class StoreListTableViewCell: UITableViewCell {
    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var starScore: UILabel!
    @IBOutlet weak var starCount: UILabel!
    @IBOutlet weak var menuInfo: UILabel!
    
    @IBOutlet weak var deliveryPayLabel: UILabel!
    @IBOutlet weak var deliveryTimeLabel: UILabel!
    @IBOutlet weak var couponView: UIView!
    @IBOutlet weak var couponLabel: UILabel!
    @IBOutlet weak var minOrderValue: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        couponView.layer.cornerRadius = 5
        storeImage.layer.cornerRadius = 22
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
