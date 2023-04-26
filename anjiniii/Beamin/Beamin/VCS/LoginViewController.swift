//
//  LoginViewController.swift
//  Beamin
//
//  Created by 이안진 on 2023/04/05.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton?
    
    @IBOutlet weak var facebookLoginButton: UIButton?
    @IBOutlet weak var naverLoginButton: UIButton?
    @IBOutlet weak var appleLoginButton: UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        facebookLoginButton?.contentMode = .scaleAspectFit
        facebookLoginButton?.contentVerticalAlignment = .fill
        
//        naverLoginButton?.layer.cornerRadius = 6
//        naverLoginButton?.layer.borderWidth = 1
//        naverLoginButton?.layer.borderColor = UIColor.gray.cgColor
        
        // TODO: add logo image at social login button
    }
    
    @IBAction func dismissLoginView(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
