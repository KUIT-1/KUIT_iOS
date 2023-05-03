//
//  OrderViewController.swift
//  Baemin
//
//  Created by byeoungjik on 2023/04/04.
///Users/jikbb2/Desktop/iOS_STUDY/Baemin/Baemin/ViewControllers/ViewController.swift

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
    
    var foodButtonArr: [foodButton] = []
    let foodAssetsArr: [String] = ["chicken", "croissant", "cupcake", "hamburger", "Hetbahn", "hotdog", "jjigae", "jogbal", "lunchbox", "night", "pizza", "ramen", "rice", "snack", "sushi"]
    let foodNameArr: [String] = ["치킨", "크로아상", "컵케익", "햄버거", "햇반", "핫도그", "한식", "족발", "도시락", "야식", "피자", "라멘", "밥", "간식", "초밥"]
    
    override func viewDidLoad() {
        //화면이 준비가 되었을 때 작동
        super.viewDidLoad()
        
        foodButtonArr = [foodButton1, foodButton2, foodButton3, foodButton4, foodButton5, foodButton6, foodButton7, foodButton8, foodButton9, foodButton10, foodButton11, foodButton12, foodButton13, foodButton14, foodButton15]
        
        var index: Int = 0
        
        foodButtonArr.forEach{
            $0.foodImage.image = UIImage(named: foodAssetsArr[index])
            $0.foodLabel.text = foodNameArr[index]
            index += 1
        }
        
    }
    
}
