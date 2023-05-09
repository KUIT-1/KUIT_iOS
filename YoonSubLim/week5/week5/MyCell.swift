//
//  MyCell.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/02.
//

import UIKit

class MyCell: UITableViewCell {

    @IBOutlet weak var LogoImage: UIImageView!
    @IBOutlet weak var Name: UILabel!
    @IBOutlet weak var Star: UILabel!
    
    // Cell 이 실제로 만들어졌을 때 -> viewDidLoad 와 유사하다.
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    // Cell 이 선택됐을 때
    override func setSelected(_ selected: Bool, animated: Bool) {
        print("setSelected call by " + (Name.text ?? "??"))
        super.setSelected(selected, animated: animated)
        print((Name.text ?? "??") + " selected")

        // Configure the view for the selected state
    }

}
