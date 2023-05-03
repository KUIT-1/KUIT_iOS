//
//  TableView_ViewController.swift
//  week5
//
//  Created by YoonSub Lim on 2023/05/02.
//

import UIKit

class TableView_ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataSrc: [tableViewDataModel] = []
    
    // UITableViewDataSource, UITableViewDelegate 가
    // 프로토콜이기 때문에 구현 필요하다
    
    // tableView 의 element 개수. numberOfRows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
    }
    
    // 셀 하나하나 만들어줌
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else { return UITableViewCell() } // 실패시 기본 형태
        
        cell.LogoImage.image = UIImage(named: dataSrc[indexPath.row].imageName) // indexPath 의 row 는 몇 번째 줄인지 반환해줌
        cell.Name.text = dataSrc[indexPath.row].storeName
        cell.Star.text = dataSrc[indexPath.row].star
        
        return cell // 성공시
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // table view 가 만들어질 때, 값이 설정되도록 한다.
        tableView.delegate = self // table 뷰가 할 일 내가 정해줄게
        tableView.dataSource = self // 데이터들을 누가 제공할 것인지
        
        dataSrc.append(tableViewDataModel(imageName: "sushi", storeName: "오! 스시", star: "5.0"))
        dataSrc.append(tableViewDataModel(imageName: "tteokbokki", storeName: "불타는 떡볶이", star: "4.0"))
        dataSrc.append(tableViewDataModel(imageName: "jjajangmyeon", storeName: "북경 짜장면", star: "4.5"))
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

struct tableViewDataModel{
    let imageName: String
    let storeName: String
    let star: String
}
