//
//  KakaoAuthViewModel.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import Combine
import Foundation
import KakaoSDKUser

class KakaoAuthViewModel: ObservableObject {
    @Published var isLoggedIn: Bool?
    
    init(isLoggedIn: Bool) {
        self.isLoggedIn = false
    }
    
    func login(completion: @escaping (String) -> Void) {
        if UserApi.isKakaoTalkLoginAvailable() {
            loginWithKakaoTalkApp { idToken in
                completion(idToken)
            }
        } else {
            loginWithKakaoTallWebView { idToken in
                completion(idToken)
            }
        }
    }
    
    func loginWithKakaoTalkApp(completion: @escaping (String) -> Void) {
        UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
            guard let idToken = oauthToken?.idToken else {
                print("nil oauthtoken")
                return
            }
            
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoTalk() success.")
                print("DEBUG: \(idToken)")
                completion(idToken)
                // do something
                _ = oauthToken
            }
            
            self.isLoggedIn = true
        }
    }
    
    func loginWithKakaoTallWebView(completion: @escaping (String) -> Void) {
        UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
            guard let idToken = oauthToken?.idToken else {
                print("nil oauthtoken")
                return
            }
            
            if let error = error {
                print(error)
            } else {
                print("loginWithKakaoAccount() success.")
                print("DEBUG: \(idToken)")
                completion(idToken)
                // do something
                _ = oauthToken
            }
            
            self.isLoggedIn = true
        }
    }
    
    func logout() {
        UserApi.shared.logout {(error) in
            if let error = error {
                print(error)
            } else {
                print("logout() success.")
            }
            self.isLoggedIn = false
        }
    }
    
    func unlink() {
        UserApi.shared.unlink {(error) in
            if let error = error {
                print(error)
            }
            else {
                print("unlink() success.")
            }
        }
    }
}
