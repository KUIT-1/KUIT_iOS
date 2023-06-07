//
//  StoreListCollectionViewCell.swift
//  baemin
//
//  Created by 황재상 on 2023/05/13.
//

import UIKit

class StoreListCollectionViewCell: UICollectionViewCell, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var storeListTableView: UITableView!
    
    var dataModel: [MenuDataModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        storeListTableView.dataSource = self
        storeListTableView.delegate = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "storelisttableviewcell", for: indexPath) as? StoreListTableViewCell else {return UITableViewCell()}
        cell.storeName.text = dataModel[indexPath.row].storeName
        cell.starScore.text = String(dataModel[indexPath.row].starScore)
        if dataModel[indexPath.row].starCount > 100 {
            cell.starCount.text = "(100+)"
        }
        else {
            cell.starCount.text = "(" + String(dataModel[indexPath.row].starCount) + ")"
        }
        cell.menuInfo.text = dataModel[indexPath.row].menuInfo
        cell.minOrderValue.text = String(dataModel[indexPath.row].minOrderValue) + "원"
        
        
        if dataModel[indexPath.row].minDeliveryTime == dataModel[indexPath.row].maxDeliveryTime{
            cell.deliveryTimeLabel.text = "배달 " + String(dataModel[indexPath.row].minDeliveryTime) + "분"
        }else{
            cell.deliveryTimeLabel.text = "배달 " + String(dataModel[indexPath.row].minDeliveryTime) + "~" + String(dataModel[indexPath.row].maxDeliveryTime) + "분"
        }
        
        if dataModel[indexPath.row].minDeliveryPay == dataModel[indexPath.row].maxDeliveryPay{
            cell.deliveryPayLabel.text = "배달팁 " + String(dataModel[indexPath.row].minDeliveryPay) + "원"
        }else{
            cell.deliveryPayLabel.text = "배달팁 " + String(dataModel[indexPath.row].minDeliveryPay) + "원~" + String(dataModel[indexPath.row].maxDeliveryPay) + "원"
        }
        
        if dataModel[indexPath.row].coupon2{
            cell.couponView.backgroundColor = UIColor.orange
            cell.couponLabel.text = "바로사용쿠폰"
            cell.couponLabel.textColor = UIColor.white
            cell.couponView.alpha = 1
            cell.couponLabel.alpha = 1
        }else if dataModel[indexPath.row].coupon{
            cell.couponView.backgroundColor = UIColor(red: 252.0/255.0, green: 243.0/255.0, blue: 230.0/255.0, alpha: 1)
            cell.couponLabel.text = "쿠폰"
            cell.couponLabel.textColor = UIColor.orange
            cell.couponView.alpha = 1
            cell.couponLabel.alpha = 1
        }else{
            cell.couponView.alpha = 0
            cell.couponLabel.alpha = 0
        }
            
        return cell
    }
    
}
