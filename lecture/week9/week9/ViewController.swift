//
//  ViewController.swift
//  week9
//
//  Created by 황재상 on 2023/05/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        let url = URL(string: "http://apis.data.go.kr/1613000/ExpBusArrInfoService/getExpBusTmnList?serviceKey=MXaOLldc%2FcMikgWupHZWPyG4%2FECMwzEmocS7g7ueaD5WVp4OaLu1ez8o0KaB4jayNdPppHfoPFuPgt%2B8qUjIuA%3D%3D&_type=json")
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        
//        let input = try? JSONEncoder().encode(<#T##value: Encodable##Encodable#>)
        
        let session = URLSession(configuration: .default)
        
//        session.uploadTask(with: request, from: input){(data: Data?, response: URLResponse?, error: Error?)in
//            let output = try? JSONDecoder().decode(ResponseJSON.self, from: data!)
//            print(output!)
//        }.resume()
        
        session.dataTask(with: request){(data: Data?, response: URLResponse?, error: Error?)in
            let output = try? JSONDecoder().decode(ResponseJSON.self, from: data!)
            print(output!)
        }.resume()
    }
}

