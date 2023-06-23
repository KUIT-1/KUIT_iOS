//
//  ViewController.swift
//  Week6
//
//  Created by 이안진 on 2023/05/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var testCollectionView: UICollectionView!
    let colorTable: [UIColor] = [UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testCollectionView.dataSource = self
        testCollectionView.delegate = self
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // 몇 개의 셀이 있는지
        let colorTable: [UIColor] = [UIColor.black, UIColor.red, UIColor.blue, UIColor.green, UIColor.gray, UIColor.magenta]
        return colorTable.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // 어떤 셀을 사용할건지
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath) as! testCollectionViewCell
        
        let colorTable: [UIColor] = [UIColor.black , UIColor.red, UIColor.blue , UIColor.green , UIColor.gray, UIColor.magenta]
        cell.myView.backgroundColor = colorTable[indexPath.row]
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 각 셀의 크기가 어떻게 되는지
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
