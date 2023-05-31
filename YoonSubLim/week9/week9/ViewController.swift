//
//  ViewController.swift
//  week9
//
//  Created by YoonSub Lim on 2023/05/31.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myURLRequest()

    }
    
    func myURLRequest(){
        // URL Request 요청 실습
        
        let urlStr = "http://swopenapi.seoul.go.kr/api/subway/" + mySubwayOpenAPIKey + "/json/realtimeStationArrival/0/5/건대입구"
        
        // URL 에 한글이 포함된 경우, encoding 작업이 필요하다.
        guard let encoded = urlStr.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed), let myURL = URL(string: encoded) else { return }
        print(myURL)

        var request = URLRequest(url: myURL)
        request.httpMethod = "GET"
        
        // URL Session
        let session = URLSession(configuration: .default)
        
        // App Transport Security has blocked a cleartext HTTP connection toswopenapi.seoul.go.krsince it is insecure. Use HTTPS instead or add this domain to Exception Domains in your Info.plist.
        // -> 보안 상의 이유로 HTTPS 를 사용하거나, Info.plist 에 HTTP 허용 옵션 추가
        // App Transport Security Settings > Allow Arbitrary Loads (YES)
        session.dataTask(with: request){(data: Data?, response: URLResponse?, error: Error?)in
            let output = try? JSONDecoder().decode(ResponseJSON.self, from: data!) // data -> myDataModel's ResponseJSON converting
            print(output)
        }.resume()
        
        
        /*
            만약에 서버로 보낼 값들이 존재하는 경우 (PATCH or POST)
         */
//        request.httpMethod = "PATCH" // "POST"
//        let input = try? JSONEncoder().encode(<#T##value: Encodable##Encodable#>) // 보내는 값 포함하여
//        session.uploadTask(with: request, from: input){(data: Data?, response: URLResponse?, error: Error?)in
//            let output = try? JSONDecoder().decode(ResponseJSON.self, from: data!) // data -> myDataModel's ResponseJSON converting
//            print(output)
//        }.resume()
        
    }


}

