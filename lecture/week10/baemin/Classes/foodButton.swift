import UIKit

class foodButton: UIView {

    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var foodBT: UIButton!
    
    required init?(coder aDecoder: NSCoder){
        super.init(coder: aDecoder)
        customInit()
    }
    
    override init(frame: CGRect){
        super.init(frame: frame)
        customInit()
    }
    
    func customInit(){
        guard let view = loadViewFromNib() else { return }
        //화면에 추가
        view.frame = self.bounds
        self.addSubview(view)
        
    }
    
    func loadViewFromNib() -> UIView?{
        let nib = UINib(nibName: "foodButton", bundle: nil)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
