//
//  LoginViewController.swift
//  baemin
//
//  Created by 정아현 on 2023/04/03.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton?

    @IBOutlet weak var facebookLoginButton: UIButton?
    @IBOutlet weak var naverLoginButton: UIButton?
    @IBOutlet weak var appleLoginButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facebookLoginButton?.imageView?.contentMode = .scaleAspectFit;
        naverLoginButton?.imageView?.contentMode = .scaleAspectFit;
        appleLoginButton?.imageView?.contentMode = .scaleAspectFit;
        
        
    }
}
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


