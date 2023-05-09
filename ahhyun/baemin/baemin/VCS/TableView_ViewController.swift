//
//  TableView_ViewController.swift
//  baemin
//
//  Created by 정아현 on 2023/05/01.
//

import UIKit

class TableView_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataSrc: [tableViewDataModel] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else {return UITableViewCell() }
        
        cell.LogoImage.image = UIImage(named: dataSrc[indexPath.row].imageName)
        cell.Name.text = dataSrc[indexPath.row].storeName
        cell.Star.text = dataSrc[indexPath.row].star
        cell.Delivery.text = dataSrc[indexPath.row].delivery
        cell.DeliveryTip.text = dataSrc[indexPath.row].deliverytip
        cell.Min.text = dataSrc[indexPath.row].min
        
        
        return cell
    }
    

    
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        dataSrc.append(tableViewDataModel(imageName: "store1", storeName: "피자플래닛", star: "4.0", delivery: "배달 39~54분", deliverytip: "배달팁 700~2,400원", min: "18,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store2", storeName: "잭슨피자", star: "4.6", delivery: "배달 29~44분", deliverytip: "배달팁 0~1,500원", min: "15,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store3", storeName: "핏자터틀스", star: "4.3", delivery: "배달 50~56분", deliverytip: "배달팁 700~3,500원", min: "21,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store4", storeName: "반올림피자", star: "4.0", delivery: "배달 45~62분", deliverytip: "배달팁 1,000~3,500원", min: "24,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store5", storeName: "서오릉피자", star: "3.5", delivery: "배달 50~57분", deliverytip: "배달팁 1,500~4,500원", min: "20,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store6", storeName: "ASAP PIZZA", star: "4.2", delivery: "배달 25~57분", deliverytip: "배달팁 1,000~4,500원", min: "23,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store7", storeName: "팔자좀피자", star: "3.8", delivery: "배달 15~32분", deliverytip: "배달팁 1,000~3,500원", min: "27,000원"))
        dataSrc.append(tableViewDataModel(imageName: "store8", storeName: "번쩍피자", star: "4.5", delivery: "배달 26~37분", deliverytip: "배달팁 1,000~5,500원", min: "25,000원"))

        // Do any additional setup after loading the view.
    }
    
}

struct tableViewDataModel{
    let imageName:  String
    let storeName:  String
    let star:  String
    let delivery:  String
    let deliverytip:  String
    let min:  String
}

