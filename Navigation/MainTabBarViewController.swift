//
//  MainTabBarViewController.swift
//  Navigation
//
//  Created by Кирилл on 21.04.2022.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    let feedVc = FeedViewController()
    let profileVc = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }

    private func setupControllers() {
        
        let feedNavController = UINavigationController(rootViewController: feedVc)
        feedNavController.tabBarItem.title = "Лента"
        feedNavController.tabBarItem.image = UIImage(systemName: "bolt")
        
        let profileNavController = UINavigationController(rootViewController: profileVc)
        profileNavController.tabBarItem.title = "Профиль пользователя"
        profileNavController.tabBarItem.image = UIImage(systemName: "face.smiling")
        
        viewControllers = [feedNavController, profileNavController]
    }
}
