//
//  MyCell1.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/03.
//

import UIKit

class MyCell1: UITableViewCell {
    
    @IBOutlet weak var storeImage: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeRate: UILabel!
    @IBOutlet weak var storeDescription: UILabel!
    @IBOutlet weak var storeLeastPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
