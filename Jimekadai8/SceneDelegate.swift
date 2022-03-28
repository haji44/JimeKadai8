//
//  SceneDelegate.swift
//  Jimekadai8
//
//  Created by kitano hajime on 2022/03/27.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let windowSecene = (scene as? UIWindowScene) else { return }
        window?.windowScene = windowSecene
        window?.rootViewController = TabViewController()
        window?.makeKeyAndVisible()
    }
}

