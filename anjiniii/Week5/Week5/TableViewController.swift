//
//  TableViewController.swift
//  Week5
//
//  Created by 이안진 on 2023/05/03.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var restaurants: [Restaurant] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else { return UITableViewCell() }
        cell.logoImage.image = UIImage(named: restaurants[indexPath.row].logoImage)
        cell.name.text = restaurants[indexPath.row].name
        cell.grade.text = restaurants[indexPath.row].grade
        cell.deliveryInfo.text = restaurants[indexPath.row].deliveryInfo
        cell.minimumOrderAmount.text = restaurants[indexPath.row].minimumOrderAmount
        return cell
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        restaurants.append(Restaurant(logoImage: "manLiJangSeong",
                                      name: "만리장성",
                                      grade: "4.8",
                                      deliveryInfo: "배달 15~30분, 배달팁 0~3,000원",
                                      minimumOrderAmount: "12,000원"))
        restaurants.append(Restaurant(logoImage: "pizza",
                                      name: "페페로니피자",
                                      grade: "5.0",
                                      deliveryInfo: "배달 30~40분, 배달팁 1,500~3,000원",
                                      minimumOrderAmount: "18,000원"))
        restaurants.append(Restaurant(logoImage: "pasta",
                                      name: "이태리파스타",
                                      grade: "4.7",
                                      deliveryInfo: "배달 25~30분, 배달팁 0~2,000원",
                                      minimumOrderAmount: "15,000원"))
        restaurants.append(Restaurant(logoImage: "burger",
                                      name: "패티많은버거",
                                      grade: "4.9",
                                      deliveryInfo: "배달 15~20분, 배달팁 3,000~4,000원",
                                      minimumOrderAmount: "8,000원"))
    }

}

struct Restaurant {
    let logoImage: String
    let name: String
    let grade: String
    let deliveryInfo: String
    let minimumOrderAmount: String
}
