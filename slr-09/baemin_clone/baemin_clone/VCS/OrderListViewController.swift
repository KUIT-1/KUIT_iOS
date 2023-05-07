//
//  OrderListViewController.swift
//  baemin_clone
//
//  Created by 가은 on 2023/05/07.
//

import UIKit

class OrderListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // 더미 데이터
    var dataSrc: [tableViewDataModel] = []
    
    // 데이터가 몇 개의 줄을 가지는지
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCell", for: indexPath) as? ShopCell else {
            return UITableViewCell()
        }
        
        cell.shopImage.image = UIImage(named: dataSrc[indexPath.row].imageName)
        cell.shopName.text = dataSrc[indexPath.row].shopName
        cell.ratingLabel.text = dataSrc[indexPath.row].rating
        cell.deliveryTime.text = dataSrc[indexPath.row].deliveryTime
        cell.deliveryTip.text = dataSrc[indexPath.row].deliveryTip
        cell.minDeliverCost.text = dataSrc[indexPath.row].minDeliveryCost
        
        return cell
    }
    

    
    @IBOutlet weak var shopListTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shopListTableView.delegate = self
        shopListTableView.dataSource = self
        
        
        // 더미데이터 추가
        dataSrc.append(tableViewDataModel(imageName: "chicken", shopName: "치킨집", rating: "4.6", deliveryTime: "29~40분", deliveryTip: "0원~3,000원", minDeliveryCost: "20,000원"))
        dataSrc.append(tableViewDataModel(imageName: "cupcake", shopName: "컵케이크", rating: "4.8", deliveryTime: "20~45분", deliveryTip: "0원~2,000원", minDeliveryCost: "18,000원"))
        dataSrc.append(tableViewDataModel(imageName: "hotdog", shopName: "핫도그", rating: "4.9", deliveryTime: "30~50분", deliveryTip: "0원~1,500원", minDeliveryCost: "10,000원"))
        dataSrc.append(tableViewDataModel(imageName: "pizza", shopName: "피자", rating: "4.9", deliveryTime: "30~50분", deliveryTip: "0원~2,000원", minDeliveryCost: "30,000원"))
    }
    

    

}

struct tableViewDataModel {
    let imageName: String
    let shopName: String
    let rating: String
    let deliveryTime: String
    let deliveryTip: String
    let minDeliveryCost: String
}
