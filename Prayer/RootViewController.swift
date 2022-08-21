//
//  RootViewController.swift
//  Prayer
//
//  Created by Daoxing.Huang on 2022/8/20.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let home = HomeViewController()
        home.title = "Home";
        home.tabBarItem.image = UIImage(named: "tab_home_icon")
        
        let profile = ProfileViewController()
        profile.title = "My";
        profile.tabBarItem.image = UIImage(named: "tab_home_icon")

        
        let map = MapViewController()
        map.title = "Map";
        map.tabBarItem.image = UIImage(named: "tab_home_icon")

        viewControllers = [UINavigationController(rootViewController: home),
                           UINavigationController(rootViewController: profile),
                           UINavigationController(rootViewController: map)]
    }
}

