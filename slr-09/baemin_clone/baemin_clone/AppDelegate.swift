//
//  AppDelegate.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    // 구현중인 앱이 처음 실행되면서 앱의 셋업이 완료되었을때만 호출
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle
    // 사용자나 시스템이 새로운 Scene을 생성했을때 호출
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    // 유저가 app switcher를 통하여 Scene을 닫을 때 호출
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

