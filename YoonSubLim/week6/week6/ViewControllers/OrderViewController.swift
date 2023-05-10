//
//  OrderViewController.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class OrderViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var orderCollectionView: UICollectionView!
    
    var orderCategories: [collectionViewCategoryDataModel] = []
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        orderCategories.count
    }
    
    // 셀을 만들자
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as? OrderCollectionViewCell else { return UICollectionViewCell() }
        
        cell.categoryName.text = orderCategories[indexPath.row].category
        
        return cell
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataInit(arr: &orderCategories)

        orderCollectionView.dataSource = self
        orderCollectionView.delegate = self
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // collecion view cell 의 크기 지정
        // UICollectionViewDelegateFlowLayout 프로토콜 채택 필요
        
        return CGSize(width: collectionView.frame.width/4, height: collectionView.frame.height)
    }
    
}

func dataInit(arr: inout [collectionViewCategoryDataModel]) {
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈1", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발1", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발1", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점1", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발1", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈2", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발2", star: "5.0"),
            collectionViewStoreDataModel(storeName: "귀한족발2", star: "4.2"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점2", star: "4.8"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발2", star: "4.4")
        ])
    )
}

struct collectionViewCategoryDataModel{
    let category: String
    let stores: [collectionViewStoreDataModel]
}

struct collectionViewStoreDataModel{
    let storeName: String
    let star: String
}

