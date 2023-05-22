//
//  ColorChangeViewController.swift
//  week7
//
//  Created by YoonSub Lim on 2023/05/23.
//

import UIKit

class ColorChangeViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("[log] " + String(btn1.isEnabled))
        
        print("[log] view did load ~~")
        
        guard let colorData = UserDefaults.standard.object(forKey: "defaultBackgroundColor") as? Data else {return}
        
        // Data -> UIColor
        self.view.backgroundColor = NSKeyedUnarchiver.unarchiveObject(with: colorData) as? UIColor
    }
    
    // NSKeyedArchiver.archivedData
    // UIColor 객체 -> Data 로 변환
    
    @IBAction func greenBtnTab(_ sender: Any) {
        print("green")
        self.view.backgroundColor = .green
        do{
            let colorData = try NSKeyedArchiver.archivedData(withRootObject: UIColor.green, requiringSecureCoding: false)
            
            UserDefaults.standard.set(colorData, forKey: "defaultBackgroundColor")
        }catch{
            print(error.localizedDescription)
        }
    }
    
    @IBAction func redBtnTab(_ sender: Any) {
        print("red")
        self.view.backgroundColor = .red
        do{
            let colorData = try NSKeyedArchiver.archivedData(withRootObject: UIColor.red, requiringSecureCoding: false)
            
            UserDefaults.standard.set(colorData, forKey: "defaultBackgroundColor")
        }catch{
            print(error.localizedDescription)
        }
    }
    
    @IBAction func blueBtnTab(_ sender: Any) {
        print("blue")
        self.view.backgroundColor = .blue
        do{
            let colorData = try NSKeyedArchiver.archivedData(withRootObject: UIColor.blue, requiringSecureCoding: false)
            
            UserDefaults.standard.set(colorData, forKey: "defaultBackgroundColor")
        }catch{
            print(error.localizedDescription)
        }
    }

}
