//
//  SceneDelegate.swift
//  baemin_clone
//
//  Created by 가은 on 2023/04/04.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    // UISceneSession 생명주기에서 첫번째로 호출되는 메서드
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    // 두번째 메서드는 앱이 실행될때 즉, 처음으로 앱이 active 상태에 돌입할때나 backgound에서 foreground상태로 넘어올 때 호출
    func sceneDidDisconnect(_ scene: UIScene) {
        print("sceneDidDisconnect")
    }

    // WillEnterForeground 메서드 바로 뒤에 호출되며 Scene이 설정되고 화면에 표시할 준비
    func sceneDidBecomeActive(_ scene: UIScene) {
        print("sceneDidBecomeActive")
    }

    // 앱이 background에 올라갔을때 호출
    func sceneWillResignActive(_ scene: UIScene) {
        print("sceneWillResignActive")
    }

    // 앱이 background에 올라갔을때 호출
    func sceneWillEnterForeground(_ scene: UIScene) {
        print("sceneWillEnterForeground")
    }

    // scene이 앱으로부터 disconnect될 때 호출
    func sceneDidEnterBackground(_ scene: UIScene) {
        print("sceneDidEnterBackground")
    }


}

