//
//  StoreListCollectionViewCell.swift
//  baemin
//
//  Created by 황재상 on 2023/05/12.
//

import UIKit

class StoreListCollectionViewCell: UICollectionViewCell, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var TV: UITableView!
    var dataModel: [MenuDataModel] = []
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        TV.dataSource = self
        TV.delegate = self
    }
    
    
    

}
