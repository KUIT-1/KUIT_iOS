//
//  foodButton.swift
//  baemin
//
//  Created by YoonSub Lim on 2023/04/05.
//

import UIKit

class foodButton: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodBT: UIButton!
    
    // 기본적인 초기화 함수 -> UIView 생성
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        customInit()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        customInit()
    }
    
    // UIView 위에 만들어 놓은 이미지 라벨 버튼을 올려야 한다.
    func customInit(){
        guard let view = loadViewFromNib() else {return} // guard 라면 nil 일 때 실행될 구문
                
//        if view == nil{
//            return
//        }
        
        view.frame = self.bounds
        self.addSubview(view)
    }
    
    func loadViewFromNib() -> UIView?{
        let nib = UINib(nibName: "foodButton", bundle: nil) // name 이 foodButton 인 nib 를 가져와라
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
    
    @IBAction func foodButtonTab(_ sender: Any) {
        print(foodLabel.text! + " 버튼 클릭")
    }
    

}
