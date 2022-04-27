//
//  ProfileViewController.swift
//  Netology_IB_Instruments
//
//  Created by Кирилл on 22.04.2022.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let screenWidth = UIScreen.main.bounds.width
        let screenHeight = UIScreen.main.bounds.height
        if let myView = Bundle.main.loadNibNamed("ProfileView", owner: ProfileView(), options: nil)?.first as? ProfileView {
            myView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
            view.addSubview(myView)
        }
    }

}
