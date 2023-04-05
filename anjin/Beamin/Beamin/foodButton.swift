//
//  foodButton.swift
//  Beamin
//
//  Created by 이안진 on 2023/04/05.
//

import UIKit

class foodButton: UIView {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodButton: UIButton!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        customInit()
    }
    
    
    func customInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView? {
        let nib = UINib(nibName: "foodButton", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
}
