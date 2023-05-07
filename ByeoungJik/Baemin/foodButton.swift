//
//  foodButton.swift
//  Baemin
//
//  Created by byeoungjik on 2023/04/05.
//

import UIKit
class foodButton: UIView {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodButton: UIButton!
    
    
    required init?(coder aDecoder : NSCoder) {
        super.init(coder: aDecoder)
        costomInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        costomInit()
    }

    func costomInit(){
        guard let view = loadViewFromNib() else {return }// false , nil
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView?{
        let nib = UINib(nibName: "foodButton", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
