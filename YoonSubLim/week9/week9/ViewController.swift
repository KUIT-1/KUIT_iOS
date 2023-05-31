//
//  ViewController.swift
//  week9
//
//  Created by YoonSub Lim on 2023/05/31.
//

import UIKit
import KakaoSDKUser
import KakaoSDKAuth
import KakaoSDKCommon

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        myURLRequest()

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
    
    @IBAction func kakaoLoginBtnTap(_ sender: Any) {

        requestKakaoLogin() // 예외 처리 가정
        print("# requestKakaoLogin() 완료")
        
        // 의문 -> 첫 Tap 때는 왜 출력이 안될까
        // sleep(5) 했을 때 위의 print 문까지 출력되고, 5초 후에 me() failed printed
        // 비동기-동기 관련 이슈일 거 같은데, 추후에 수정해보기
        printMyUserInfo()

    }
    
    func requestKakaoLogin(){
        
        // 앱 실행 시 사용자가 앞서 로그인을 통해 발급 받은 토큰이 있는지 확인
        if (AuthApi.hasToken()) {
            UserApi.shared.accessTokenInfo { (accessTokenInfo, error) in
                if let error = error {
                    if let sdkError = error as? SdkError, sdkError.isInvalidTokenError() == true  {
                        //로그인 필요
                        print("# 토큰 O / 액세스 토큰 유효성 X / 로그인 필요")
                        self.kakaoLogin()
                    }
                    else {
                        //기타 에러
                        print("# 기타 에러")
                        print(error)
                    }
                }
                else {
                    //토큰 유효성 체크 성공(필요 시 토큰 갱신됨)
                    print("# 토큰 O / 액세스 토큰 유효성 O")
                    print("# 액세스 토큰이 유효한 상태이므로 사용자 로그인 불필요. 해당 액세스 토큰으로 카카오 API 호출 가능")
                    
                    //do something
                    _ = accessTokenInfo
                }
            }
        }
        else {
            //로그인 필요
            print("# 토큰 X")
            self.kakaoLogin()

        }
        
    }
    
    func kakaoLogin(){
        
        // 카카오톡 실행 가능 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print("# KakaoTalkLogin 가능 / loginWithKakaoTalk 실패")
                    print(error)
                }
                else {
                    print("# KakaoTalkLogin 가능 / loginWithKakaoTalk 성공")

                    //do something
                    _ = oauthToken
                }
            }
        }
        // 카카오계정으로 로그인
        else{
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print("# KakaoTalkLogin 불가 / loginWithKakaoAccount 시도 실패")
                        print(error)
                    }
                    else {
                        print("# KakaoTalkLogin 불가 / loginWithKakaoAccount 시도 성공")

                        //do something
                        _ = oauthToken
                    }
                }
        }
        
    }
    
    func printMyUserInfo(){
        
        UserApi.shared.me() {(user, error) in
            if let error = error {
                print("# me() failed")
                print(error)
            }
            else {
                print("# me() success.")
                
                //do something
                print("# myInfo's ID : " + (user?.id?.description ?? "ID default value"))
                
                print("# myInfo's email : " + (user?.kakaoAccount?.email ?? "email default value"))
                print("# myInfo's profileImageUrl : " + (user?.kakaoAccount?.profile?.profileImageUrl?.absoluteString ?? "profileImageUrl default value"))
                print("# myInfo's nickname : " + (user?.kakaoAccount?.profile?.nickname ?? "nickname default value"))
                
                print("# myInfo's connectedAt : " + (user?.connectedAt?.description ?? "connectedAt default value"))
                
            }
        }
        
    }
    

}

