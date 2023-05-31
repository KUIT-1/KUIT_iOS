//
//  Week9App.swift
//  Week9
//
//  Created by 이안진 on 2023/05/31.
//

import KakaoSDKAuth
import KakaoSDKCommon
import SwiftUI

@main
struct Week9App: App {
    
    init() {
        // Kakao SDK 초기화
        // test 앱이라서 NATIVE_APP_KEY를 그대로 작성함
        let NATIVE_APP_KEY = "38eef02d521fd8c69ace29922fc757bd"
        KakaoSDK.initSDK(appKey: NATIVE_APP_KEY)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
