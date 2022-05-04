//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Кирилл on 21.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileHeaderView = ProfileHeaderView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        navigationController?.navigationBar.backgroundColor = .white
        view.addSubview(profileHeaderView)
    }
    
    override func viewWillLayoutSubviews() {
        profileHeaderView.frame = self.view.safeAreaLayoutGuide.layoutFrame
    }
    
}

