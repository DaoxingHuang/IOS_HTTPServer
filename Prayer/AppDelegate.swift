//
//  AppDelegate.swift
//  Prayer
//
//  Created by Daoxing.Huang on 2022/8/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window  = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootViewController()
        window?.makeKeyAndVisible()
        UINavigationBar.appearance().barTintColor = .blue
        
        return true
    }
}

