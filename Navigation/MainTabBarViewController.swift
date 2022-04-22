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
//    let postVc = PostViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupControllers()
    }

    private func setupControllers() {
//        firstVC.tabBarItem.title = "First"
//        firstVC.tabBarItem.image = UIImage(systemName: "bolt")
//        secondVC.tabBarItem.title = "Second"
//        secondVC.tabBarItem.image = UIImage(systemName: "bolt")
//        postVc.tabBarItem.title = "Новый пост"
        
        let feedNavController = UINavigationController(rootViewController: feedVc)
        feedNavController.tabBarItem.title = "Лента"
        feedNavController.tabBarItem.image = UIImage(systemName: "bolt")
//        feedNavController.addChild(postVc)
        
        let profileNavController = UINavigationController(rootViewController: profileVc)
        profileNavController.tabBarItem.title = "Профиль пользователя"
        profileNavController.tabBarItem.image = UIImage(systemName: "face.smiling")
        
//        let postNavController = UINavigationController(rootViewController: postVc)
//        postNavController.tabBarItem.title = "Пост"
//        postNavController.tabBarItem.image = UIImage(systemName: "face.smiling")
        
        viewControllers = [feedNavController, profileNavController]
    }
}
