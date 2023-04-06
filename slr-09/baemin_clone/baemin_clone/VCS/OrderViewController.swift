//
//  OrderViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

class OrderViewController: UIViewController {

    
    @IBOutlet weak var foodBtn1: foodButton!
    @IBOutlet weak var foodBtn2: foodButton!
    @IBOutlet weak var foodBtn3: foodButton!
    @IBOutlet weak var foodBtn4: foodButton!
    @IBOutlet weak var foodBtn5: foodButton!
    @IBOutlet weak var foodBtn6: foodButton!
    @IBOutlet weak var foodBtn7: foodButton!
    @IBOutlet weak var foodBtn8: foodButton!
    @IBOutlet weak var foodBtn9: foodButton!
    @IBOutlet weak var foodBtn10: foodButton!
    @IBOutlet weak var foodBtn11: foodButton!
    @IBOutlet weak var foodBtn12: foodButton!
    @IBOutlet weak var foodBtn13: foodButton!
    @IBOutlet weak var foodBtn14: foodButton!
    @IBOutlet weak var foodBtn15: foodButton!
    
    var buttonArr: [foodButton] = []
    let foodAssetsArr: [String] = ["chicken","croissant","cupcake","hamburger","Hetbahn","hotdog","jjigae","jogbal","lunchbox","night","pizza","ramen","rice","snack","sushi"]
    let foodNamesArr: [String] = ["치킨","크로아상","컵케익","햄버거","햇반","핫도그","한식","족발","도시락","야식","피자","라멘","밥","간식","초밥"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonArr = [foodBtn1,foodBtn2,foodBtn3,foodBtn4,foodBtn5,foodBtn6,foodBtn7,foodBtn8,foodBtn9,foodBtn10,foodBtn11,foodBtn12,foodBtn13,foodBtn14,foodBtn15]
        
        var index: Int = 0
        buttonArr.forEach{
//            print(index)
            $0.foodImage.image = UIImage(named: foodAssetsArr[index])
            $0.foodLabel.text = foodNamesArr[index]
            index += 1
        }
    }
    

    

}
