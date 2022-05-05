//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Кирилл on 02.05.2022.
//

import UIKit

class ProfileHeaderView: UIView {

    private let avatarImgView = UIImageView()
    private let userLabel = UILabel()
    private let statusText = UITextField()
    private let button = UIButton()
    
        override init(frame: CGRect) {
            super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
            
            avatarImgView.image = UIImage(named: "images")
            avatarImgView.layer.borderWidth = 3.0
            avatarImgView.layer.borderColor = UIColor.white.cgColor
            //Задаем режим масштабирования для изображения
            avatarImgView.contentMode = .scaleAspectFill
            avatarImgView.clipsToBounds = true
            
            userLabel.text = "Morpheus Cat"
            userLabel.textColor = .black
            userLabel.font = UIFont(name: "bold", size: 18.0)
            
            statusText.text = "Waiting for something..."
            statusText.textColor = .gray
            statusText.font = UIFont(name: "regular", size: 14.0)
            
            button.setTitle("Show status", for: .normal)
            button.backgroundColor = .blue
            button.layer.cornerRadius = 4
            button.titleLabel?.textColor = .white
            button.layer.shadowOffset.width = 4
            button.layer.shadowOffset.height = 4
            button.layer.shadowRadius = 4
            button.layer.shadowColor = UIColor.black.cgColor
            button.layer.shadowOpacity = 0.7
            button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            
            self.addSubview(avatarImgView)
            self.addSubview(userLabel)
            self.addSubview(statusText)
            self.addSubview(button)
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            
            avatarImgView.frame = CGRect(x: 16, y: 16, width: 110, height: 110)
            avatarImgView.layer.cornerRadius = avatarImgView.frame.size.height / 2.0
            
            let widthStatus = self.frame.width - avatarImgView.frame.size.width - 16
            userLabel.frame = CGRect(x: 0, y: 0, width: widthStatus, height: 50)
            userLabel.center = CGPoint(x: widthStatus / 2 + avatarImgView.frame.size.width + 16 + 16, y: 27)
            
            button.frame = CGRect(x: 0, y: 0, width: self.frame.size.width - 32, height: 50)
            button.center = CGPoint(x: self.frame.midX, y: avatarImgView.frame.height + 32 + 25)
            
            statusText.frame = CGRect(x: 0, y: 0, width: widthStatus, height: 50)
            statusText.center = CGPoint(x: widthStatus / 2 + avatarImgView.frame.size.width + 16 + 16, y: button.center.y - 25 - 34)
            
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    @objc private func buttonPressed() {
        let text = statusText.text!
        print(text)
    }
    
}
