//
//  OrderViewController.swift
//  baemin
//
//  Created by 황재상 on 2023/04/01.
//

import UIKit

class OrderViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "adv", for: indexPath) as? AdvCollectionViewCell else{
            return UICollectionViewCell()
        }
        cell.Img.image = imgArr[indexPath.row]
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: self.advCollectionView.frame.width, height: self.advCollectionView.frame.height)
           
       }
    
    
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
    @IBOutlet weak var advCollectionView: UICollectionView!
    let foodAssetsArr: [String] = ["chicken","croissant","cupcake","hamburger","Hetbahn","hotdog","jjigae","jogbal","lunch box","night","pizza","ramen","rice","snack","sushi" ]
    let foodNamesArr: [String] = ["치킨","크로아상","컵케익","햄버거","햇반","핫도그","한식","족발",
                                  "도시락","야식","피자","컵라면","밥","간식","초밥" ]
    var buttonArr: [foodButton] = []
    var imgArr: [UIImage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodButtonInit()
        print("viewDidLoad2")
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor.white
        //        appearance.titleTextAttributes = [.foregroundColor: UIColor.lightText] // With a red background, make the title more readable.
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
        advCollectionView.delegate = self
        advCollectionView.dataSource = self
        advInit()
        navigationBarInit()
    }
    
    func navigationBarInit(){
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .white
        // 구분선 제거
        appearance.shadowColor = .clear
        appearance.shadowImage = UIImage()
        // 값들의 설정
        navigationItem.standardAppearance = appearance
        navigationItem.scrollEdgeAppearance = appearance
        
    }
    
    func foodButtonInit(){
        buttonArr = [foodButton1,foodButton2,foodButton3,foodButton4,foodButton5,foodButton6,foodButton7,foodButton8,foodButton9,foodButton10,foodButton11,foodButton12,foodButton13,foodButton14,foodButton15]
        
        var index: Int = 0
        buttonArr.forEach{
            $0.foodImage.image = UIImage(named: foodAssetsArr[index])
            $0.foodLabel.text = foodNamesArr[index]
            index += 1
        }
    }
    
    func advInit(){
        let url = URL(string: "http://15.165.115.165:8080/baemin/advertiseImgs")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request){ (data: Data?, response: URLResponse?, error: Error?)in
            guard let output = try? JSONDecoder().decode(ImgRP.self, from: data!) else {
                return
            }
            
            for i in output.result{
                if let imgData = try? Data(contentsOf: URL(string: i.img)!){
                    self.imgArr.append(UIImage(data: imgData)!)
                    DispatchQueue.main.async {
                        self.advCollectionView.reloadData()
                        self.view.layoutIfNeeded()
                    }
                    
                }
            }
        }.resume()
    }
}

