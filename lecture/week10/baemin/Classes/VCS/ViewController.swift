import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var topMintView: UIView!
    @IBOutlet weak var searchBoxView: UIView!
    
    @IBOutlet weak var scrollButton1: UIButton!
    @IBOutlet weak var scrollButton2: UIButton!
    @IBOutlet weak var scrollButton3: UIButton!
    @IBOutlet weak var scrollButton4: UIButton!
    @IBOutlet weak var scrollButton5: UIButton!
    @IBOutlet weak var scrollButton6: UIButton!
    @IBOutlet weak var scrollButton7: UIButton!
    @IBOutlet weak var scrollButton8: UIButton!
    @IBOutlet weak var scrollButton9: UIButton!
    @IBOutlet weak var scrollButton10: UIButton!
    
    @IBOutlet weak var orderBG: UIImageView!
    @IBOutlet weak var orderView: UIView!
    @IBOutlet weak var orderLabel: UILabel!
    
    @IBOutlet weak var order1BG: UIImageView!
    @IBOutlet weak var order1View: UIView!
    @IBOutlet weak var order1Label: UILabel!
    
    @IBOutlet weak var packageView: UIView!
    
    @IBOutlet weak var BmartView: UIView!
    @IBOutlet weak var BmartLabel: UILabel!
    
    @IBOutlet weak var freshmartView: UIView!
    @IBOutlet weak var freshLabel: UILabel!
    
    @IBOutlet weak var baeminstroreView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        buttonInit()
        navigationBarInit()
//        viewInit()
//        scrollButtonInit()
    }
    
    @IBAction func login(_ sender: Any) {
        let loginSB = UIStoryboard(name: "Login", bundle: nil)
        let loginVC = loginSB.instantiateViewController(withIdentifier: "login")
        loginVC.modalPresentationStyle = .fullScreen
        self.present(loginVC, animated: true)
        
    }
    
    @IBAction func order1ButtonTap(_ sender: Any) {
        let orderSB = UIStoryboard(name: "StoreList", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "test")
        
        self.navigationController?.pushViewController(orderVC, animated: true)
    }
    
    @IBAction func orderButtonTap(_ sender: Any) {
        let orderSB = UIStoryboard(name: "Order", bundle: nil)
        let orderVC = orderSB.instantiateViewController(withIdentifier: "order")
        
        self.navigationController?.pushViewController(orderVC, animated: true)
    }
    
    func buttonInit(){
        let btnArr: [UIView] = [order1View, orderView, packageView, BmartView, freshmartView, baeminstroreView]
        
        order1Label.text = "한 번에 한 집만\n빠르게 배달해요!"
        order1BG.layer.cornerRadius = 10
        
        orderLabel.text = "세상은 넓고\n맛집은 많다"
        orderBG.layer.cornerRadius = 10
        
        BmartLabel.text = "지금 주문하면\n26분 후 도착!"
            
        freshLabel.text = "제철 신선 식품\n지금 바로 배달"
        
        btnArr.forEach{
            $0.layer.cornerRadius = 10
            $0.layer.shadowColor = UIColor.black.cgColor
            $0.layer.shadowOpacity = 0.1
            $0.layer.shadowRadius = 10
        }
    }
    
    func navigationBarInit(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "BMmint")
        // 구분선 제거
        appearance.shadowColor = .clear
        appearance.shadowImage = UIImage()
        // 값들의 설정
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
    }
    
    func viewInit(){
        searchBoxView.layer.cornerRadius = 2
        searchBoxView.layer.shadowColor = UIColor.black.cgColor
        searchBoxView.layer.shadowOffset = CGSize(width: 0, height: 1)
        searchBoxView.layer.shadowOpacity = 0.3
        searchBoxView.layer.shadowRadius = 1
        topMintView.layer.cornerRadius = 14
        topMintView.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
    }
    
    func scrollButtonInit(){
        let scrollBtnArr: [UIButton] = [scrollButton1, scrollButton2, scrollButton3, scrollButton4, scrollButton5, scrollButton6, scrollButton7, scrollButton8, scrollButton9, scrollButton10]
        
        scrollBtnArr.forEach{
            $0.layer.cornerRadius = 18
            $0.layer.borderColor = UIColor(named: "BMmint")?.cgColor
            $0.layer.borderWidth = 1
            
            let attributedTitle = NSMutableAttributedString(string: ($0.titleLabel?.text)!)
            attributedTitle.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(named: "BMmint")!, range: NSRange(location: 0, length: 1))
            attributedTitle.addAttribute(NSAttributedString.Key.font, value: UIFont.systemFont(ofSize: 14), range: NSRange(location: 0, length: attributedTitle.length))
            $0.setAttributedTitle(attributedTitle, for: .normal)
            
        }
    }
}
