import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var facebookLogin: UIButton!
    @IBOutlet weak var naverLogin: UIButton!
    @IBOutlet weak var appleLogin: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonInit()
    }
    
    @IBAction func xButtonTap(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func buttonInit(){
        let btArr: [UIButton] = [facebookLogin, naverLogin, appleLogin]
        btArr.forEach{
            $0.layer.cornerRadius = 5
            $0.layer.borderColor = UIColor.black.cgColor
            $0.layer.borderWidth = 0.2
        }
        loginButton.layer.cornerRadius = 5
    }
}
