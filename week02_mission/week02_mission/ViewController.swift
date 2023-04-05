//
//  ViewController.swift
//  week02_mission
//
//  Created by 정아현 on 2023/03/26.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var AppleMusic1: UIView!
    @IBOutlet weak var AppleMusic2: UIView!
    @IBOutlet weak var AppleMusic3: UIView!
    @IBOutlet weak var AppleMusic4: UIView!
    
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    @IBOutlet weak var image4: UIImageView!
    
    @IBOutlet weak var Personal: UIButton!
    @IBOutlet weak var RecentlyPlayed: UIButton!
    @IBOutlet weak var nowplaying: UITabBarItem!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        AppleMusic1.layer.cornerRadius = 8
        AppleMusic2.layer.cornerRadius = 8
        AppleMusic3.layer.cornerRadius = 8
        AppleMusic4.layer.cornerRadius = 8
        image1.layer.cornerRadius = 8
        image2.layer.cornerRadius = 8
        image3.layer.cornerRadius = 8
        image4.layer.cornerRadius = 8
        
        AppleMusic1.layer.maskedCorners = [.layerMaxXMaxYCorner, .layerMinXMaxYCorner]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func personalpressed(_ sender: Any) {
        print("personal")
    }

    @IBAction func recentlypressed(_ sender: Any) {
        print("recently played")
    }
    
}

