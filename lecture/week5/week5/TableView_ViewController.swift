//
//  TableView_ViewController.swift
//  week5
//
//  Created by 황재상 on 2023/04/29.
//

import UIKit

class TableView_ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var dataSrc: [tableViewDataModel] = []
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSrc.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as? MyCell else { return UITableViewCell() }
        
        cell.LogoImage.image = UIImage(named: dataSrc[indexPath.row].imageName)
        cell.Name.text = dataSrc[indexPath.row].storeName
        cell.Star.text = dataSrc[indexPath.row].star
        
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        dataSrc.append(tableViewDataModel(imageName: "food1", storeName: "장어덮밥", star: "5.0"))
        dataSrc.append(tableViewDataModel(imageName: "food2", storeName: "떡볶이", star: "4.0"))
        dataSrc.append(tableViewDataModel(imageName: "food3", storeName: "짜장면", star: "4.5"))
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
