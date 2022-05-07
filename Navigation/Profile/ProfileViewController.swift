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
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        Layout()
    }
    
    private func Layout() {
        
        view.addSubview(profileHeaderView)
        
        NSLayoutConstraint.activate([
            profileHeaderView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            profileHeaderView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            profileHeaderView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            profileHeaderView.heightAnchor.constraint(equalToConstant: 220)
        ])
    }
    
}

