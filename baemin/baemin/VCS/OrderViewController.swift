//
//  OrderViewController.swift
//  baemin
//
//  Created by 정아현 on 2023/04/03.
//

import UIKit

class OrderViewController: UIViewController {


    @IBOutlet weak var foodButton1: foodButton!
    @IBOutlet weak var foodButton2: foodButton!
    @IBOutlet weak var foodButton3: foodButton!
    @IBOutlet weak var foodButton4: foodButton!
    @IBOutlet weak var foodButton5: foodButton!
    @IBOutlet weak var foodButton6: foodButton!
    @IBOutlet weak var foodButton7: foodButton!
    @IBOutlet weak var foodButton8: foodButton!
    @IBOutlet weak var foodButton9: foodButton!
    @IBOutlet weak var foodButton10: foodButton!
    @IBOutlet weak var foodButton11: foodButton!
    @IBOutlet weak var foodButton12: foodButton!
    @IBOutlet weak var foodButton13: foodButton!
    @IBOutlet weak var foodButton14: foodButton!
    @IBOutlet weak var foodButton15: foodButton!
    
    
    
    
    var buttonArr: [foodButton] = []
    let foodAssetsArr: [String] =
        ["chicken","croissant","cupcake","hamburger","Hetbahn","hotdog","jjigae","jogbal","lunch box","night","pizza","ramen","rice","snack","sushi" ]
    let foodNamesArr: [String]=["치킨","크로와상","컵케익","햄버거","햇반","핫도그","한식","족발","도시락","야식","피자","라멘","밥","간식","초밥" ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonArr = [foodButton1, foodButton2, foodButton3, foodButton4, foodButton5, foodButton6, foodButton7, foodButton8, foodButton9, foodButton10, foodButton11, foodButton12, foodButton13, foodButton14, foodButton15]
        
        var index: Int = 0
        buttonArr.forEach{
            $0.foodImage.image = UIImage(named: foodAssetsArr[index])
            $0.foodLabel.text = foodNamesArr[index]
            index += 1
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

}
