//
//  OrderViewController.swift
//  week6
//
//  Created by YoonSub Lim on 2023/05/10.
//

import UIKit

class OrderViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var orderCollectionView: UICollectionView!
    @IBOutlet weak var orderTableView: UITableView!
    
    var orderCategories: [collectionViewCategoryDataModel] = []
    
    /*
        for Collection View
    */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return orderCategories.count
    }
    
    // 셀을 만들자
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "categoryCell", for: indexPath) as? OrderCollectionViewCell else { return UICollectionViewCell() }
        
        cell.categoryName.text = orderCategories[indexPath.row].category
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // collecion view cell 의 크기 지정
        // UICollectionViewDelegateFlowLayout 프로토콜 채택 필요
        
        return CGSize(width: collectionView.frame.width/4, height: collectionView.frame.height)
    }
    
    
    /*
        for Table View
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("@@1")
        
        // 선택된 카테고리의 index
        let idx = orderCollectionView.indexPathsForSelectedItems![0].row
        print("@@1 idx is", idx)
        
        
        // 해당 index 구조체(카테고리) 에 속한 stores 개수
        return orderCategories[idx].stores.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = orderTableView.dequeueReusableCell(withIdentifier: "storeCell", for: indexPath) as? StoreTableViewCell else { return UITableViewCell() }
        
        print("@@2")
        
        // 선택된 카테고리의 index
        let idx = orderCollectionView.indexPathsForSelectedItems![0].row
        print("@@2 idx is", idx)

        cell.storeName.text = orderCategories[idx].stores[indexPath.row].storeName
        cell.storeImage.image = UIImage(named: "sushi")
        cell.storeRate.text = orderCategories[idx].stores[indexPath.row].rate
        cell.storeDescription.text = orderCategories[idx].stores[indexPath.row].description
        cell.storeDeliveryTime.text = orderCategories[idx].stores[indexPath.row].deliveryTime_min + " ~ " + orderCategories[idx].stores[indexPath.row].deliveryTime_max + " 분"
        cell.storeLeastPrice.text = orderCategories[idx].stores[indexPath.row].leastPrice + " 원"
        
        return cell
    }
    
    
    /*
        for Super View
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataInit(arr: &orderCategories)
        
        orderCollectionView.dataSource = self
        orderCollectionView.delegate = self
        
        orderTableView.dataSource = self
        orderTableView.delegate = self
        
        // 처음 화면 진입시 첫 카테고리 선택 상태
        if !orderCategories.isEmpty{
            print("@@")
//            orderCollectionView.allowsSelection = true
            orderCollectionView.selectItem(at: IndexPath(item: 0, section: 0), animated: true, scrollPosition: .top)
        }
    }
    

}

func dataInit(arr: inout [collectionViewCategoryDataModel]) {
    arr.append(
        collectionViewCategoryDataModel(category: "족발/보쌈", stores: [
            collectionViewStoreDataModel(storeName: "도깨비족발", rate: "5.0", description: "asdfwefssvxcvwfa",deliveryTime_min: "42", deliveryTime_max: "57", leastPrice: "14900"),
            collectionViewStoreDataModel(storeName: "귀한족발", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "귀한족발", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "귀한족발", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "족발상식 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "원할머니보쌈족발", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "치킨", stores: [
            collectionViewStoreDataModel(storeName: "네네치킨", rate: "5.0", description: "asdfwefssvxcvwfa",deliveryTime_min: "42", deliveryTime_max: "57", leastPrice: "14900"),
            collectionViewStoreDataModel(storeName: "Bhc", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "BBQ 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "60계 치킨", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "Bhc", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "BBQ 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "60계 치킨", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "Bhc", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "BBQ 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "60계 치킨", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "Bhc", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "BBQ 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "60계 치킨", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "피자", stores: [
            collectionViewStoreDataModel(storeName: "허리피자", rate: "5.0", description: "asdfwefssvxcvwfa",deliveryTime_min: "42", deliveryTime_max: "57", leastPrice: "14900"),
            collectionViewStoreDataModel(storeName: "도미노피자", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "피자스쿨 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "건국피자", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "도미노피자", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "피자스쿨 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "건국피자", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "도미노피자", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "피자스쿨 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "건국피자", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "도미노피자", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "피자스쿨 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "건국피자", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "도미노피자", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "피자스쿨 사당방배점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "건국피자", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "야식", stores: [
            collectionViewStoreDataModel(storeName: "건국 닭발", rate: "5.0", description: "asdfwefssvxcvwfa",deliveryTime_min: "42", deliveryTime_max: "57", leastPrice: "14900"),
            collectionViewStoreDataModel(storeName: "가츠시 제육볶음", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "낙곱새는 바로 이곳", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "당신은 지금 오돌뼈가 땡긴다", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "가츠시 제육볶음", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "낙곱새는 바로 이곳", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "당신은 지금 오돌뼈가 땡긴다", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "가츠시 제육볶음", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "낙곱새는 바로 이곳", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "당신은 지금 오돌뼈가 땡긴다", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "가츠시 제육볶음", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "낙곱새는 바로 이곳", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "당신은 지금 오돌뼈가 땡긴다", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900")
        ])
    )
    arr.append(
        collectionViewCategoryDataModel(category: "카페", stores: [
            collectionViewStoreDataModel(storeName: "메가커피", rate: "5.0", description: "asdfwefssvxcvwfa",deliveryTime_min: "42", deliveryTime_max: "57", leastPrice: "14900"),
            collectionViewStoreDataModel(storeName: "스타벅스 어쩌구 지점", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "카페아에 관악점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "붕어빵 앤 디저트카페", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "스타벅스 어쩌구 지점", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "카페아에 관악점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "붕어빵 앤 디저트카페", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "스타벅스 어쩌구 지점", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "카페아에 관악점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "붕어빵 앤 디저트카페", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900"),
            collectionViewStoreDataModel(storeName: "스타벅스 어쩌구 지점", rate: "4.2", description: "4ㅗㅈ4112412423461", deliveryTime_min: "46", deliveryTime_max: "62", leastPrice: "11000"),
            collectionViewStoreDataModel(storeName: "카페아에 관악점", rate: "5.0", description: "ㅋㅌㅊㅍㅈㄷㅋㅌㅊㅍㄴㅇㅍㄴㅁㅇㄹ", deliveryTime_min: "15", deliveryTime_max: "27", leastPrice: "17000"),
            collectionViewStoreDataModel(storeName: "붕어빵 앤 디저트카페", rate: "5.0", description: "xcvwefxcvasdfqefsafd", deliveryTime_min: "30", deliveryTime_max: "120", leastPrice: "7900")
        ])
    )
}

struct collectionViewCategoryDataModel{
    let category: String
    let stores: [collectionViewStoreDataModel]
}

struct collectionViewStoreDataModel{
    let storeName: String
    let rate: String
    let description: String
    let deliveryTime_min: String
    let deliveryTime_max: String
    let leastPrice: String
}

