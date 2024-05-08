//
//  AppDelegate.swift
//  CleanSiwftShowCase
//
//  Created by Aldiyar Aitpayev on 04.05.2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: CollectionViewController())
        return true
    }


}

