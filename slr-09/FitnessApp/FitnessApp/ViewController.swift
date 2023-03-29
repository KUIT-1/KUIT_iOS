//
//  ViewController.swift
//  FitnessApp
//
//  Created by 가은 on 2023/03/29.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ActivityView1: UIView!
    @IBOutlet weak var ActivityView2: UIView!
    
    @IBOutlet weak var ExerciseView1: UIView!
    @IBOutlet weak var ExerciseView2: UIView!
    @IBOutlet weak var ExerciseView3: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ActivityView1.layer.cornerRadius = 10
        ActivityView2.layer.cornerRadius = 10
        ExerciseView1.layer.cornerRadius = 10
        ExerciseView2.layer.cornerRadius = 10
        ExerciseView3.layer.cornerRadius = 10
        
        ActivityView1.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        ActivityView2.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        
    }

    

}

