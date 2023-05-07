//
//  MyCell.swift
//  week5
//
//  Created by 황재상 on 2023/04/29.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Star: UILabel!
    
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
