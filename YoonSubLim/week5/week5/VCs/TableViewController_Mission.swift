//
//  TableViewController_Mission.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/03.
//

import UIKit

class TableViewController_Mission: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataSrc: [tableViewDataModel_Mission] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        // 만들기
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell1", for: indexPath) as? MyCell1 else { return UITableViewCell() } // 실패시 기본 형태
        
        cell.storeImage.image = UIImage(named: dataSrc[indexPath.row].imageName)
        cell.storeName.text = dataSrc[indexPath.row].storeName
        cell.storeRate.text = dataSrc[indexPath.row].star
        cell.storeDescription.text = dataSrc[indexPath.row].description
        cell.storeLeastPrice.text = dataSrc[indexPath.row].leastPrice
        
        return cell // 성공시
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self // table 뷰가 할 일 내가 정해줄게
        tableView.dataSource = self // 데이터들을 누가 제공할 것인지

        dataSrc.append(tableViewDataModel_Mission(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5", description: "[건국대학교 후문] 에 위치한 북경 짜장면입니다. 정말 맛있어요.", leastPrice: "14,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "sushi", storeName: "오! 스시", star: "5.0", description: "[초특가 세일] 사장님이 미쳤어요 ! 광어회 단돈 7000원 !!", leastPrice: "20,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0", description: "리뷰이벤트 ❤️💕 리뷰 작성 후 기재시 오징어 튀김 증정 !", leastPrice: "11,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5", description: "[건국대학교 후문] 에 위치한 북경 짜장면입니다. 정말 맛있어요.", leastPrice: "14,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "sushi", storeName: "오! 스시", star: "5.0", description: "[초특가 세일] 사장님이 미쳤어요 ! 광어회 단돈 7000원 !!", leastPrice: "20,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0", description: "리뷰이벤트 ❤️💕 리뷰 작성 후 기재시 오징어 튀김 증정 !", leastPrice: "11,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5", description: "[건국대학교 후문] 에 위치한 북경 짜장면입니다. 정말 맛있어요.", leastPrice: "14,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "sushi", storeName: "오! 스시", star: "5.0", description: "[초특가 세일] 사장님이 미쳤어요 ! 광어회 단돈 7000원 !!", leastPrice: "20,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0", description: "리뷰이벤트 ❤️💕 리뷰 작성 후 기재시 오징어 튀김 증정 !", leastPrice: "11,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5", description: "[건국대학교 후문] 에 위치한 북경 짜장면입니다. 정말 맛있어요.", leastPrice: "14,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "sushi", storeName: "오! 스시", star: "5.0", description: "[초특가 세일] 사장님이 미쳤어요 ! 광어회 단돈 7000원 !!", leastPrice: "20,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0", description: "리뷰이벤트 ❤️💕 리뷰 작성 후 기재시 오징어 튀김 증정 !", leastPrice: "11,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5", description: "[건국대학교 후문] 에 위치한 북경 짜장면입니다. 정말 맛있어요.", leastPrice: "14,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "sushi", storeName: "오! 스시", star: "5.0", description: "[초특가 세일] 사장님이 미쳤어요 ! 광어회 단돈 7000원 !!", leastPrice: "20,000"))
        dataSrc.append(tableViewDataModel_Mission(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0", description: "리뷰이벤트 ❤️💕 리뷰 작성 후 기재시 오징어 튀김 증정 !", leastPrice: "11,000"))    }
    

}

struct tableViewDataModel_Mission{
    let imageName: String
    let storeName: String
    let star: String
    let description: String
    let leastPrice: String
}
