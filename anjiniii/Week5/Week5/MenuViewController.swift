//
//  MenuViewController.swift
//  Week5
//
//  Created by 이안진 on 2023/05/19.
//

import UIKit

class MenuViewController: UIViewController {
    @IBOutlet weak var restaurantCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        restaurantCollectionView.dataSource = self
        restaurantCollectionView.delegate = self
    }

}

extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 몇개의 셀이 있는지
        let colorTable: [UIColor] = [ UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
        
        return colorTable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "restaurantCell", for: indexPath) as! MenuCollectionViewCell
        
        let colorTable: [UIColor] = [ UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
        
        cell.restaurantView.backgroundColor = colorTable[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 각 셀의 크기가 어떻게 되는지
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
