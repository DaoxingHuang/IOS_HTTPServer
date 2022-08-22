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
    // 网络是否被限制
    var isNetworkRestricted = false
    // 同意用户协议
    var isPrivacyAgreed  = false


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window  = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootViewController()
        window?.makeKeyAndVisible()
        UINavigationBar.appearance().barTintColor = .blue
        
//        print(NSHomeDirectory() + "Libri/")
//
//        let htmlPath =  Bundle.main.path(forResource: "t1", ofType: "html");
//        let toPath = NSHomeDirectory()+"/TEST";
//
//
//
//        try? FileManager.default.createDirectory(atPath: toPath, withIntermediateDirectories: true, attributes: nil)
//        try? FileManager.default.moveItem(atPath: htmlPath!, toPath: toPath + "/t1.html")
        
        return true
    }
}

