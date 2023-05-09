//
//  ViewController.swift
//  week6
//
//  Created by 황재상 on 2023/05/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testCollecitonView: UICollectionView!
    let colorTable: [UIColor] = [ UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testCollecitonView.dataSource = self
        testCollecitonView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 몇개의 셀이 있는지
        let colorTable: [UIColor] = [ UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
        
        return colorTable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath) as! testCollectionViewCell
        
        let colorTable: [UIColor] = [ UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
        
        cell.myView.backgroundColor = colorTable[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 각 셀의 크기가 어떻게 되는지
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
}
