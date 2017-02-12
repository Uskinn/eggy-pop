//
//  SpalshScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class SpalshScreenView: UIView {
    
    let headerLabel = UILabel()
    let logoImageView = UIImageView()
    let imageLogo = Image()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        headerLabel.setupHeaderLabel()
        setupHeaderLabelConstraints()
        
        logoImageView.setupLogoImage(logoImage: imageLogo.logoImage!)
        setupLogoImageConstraints()
        
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.03).isActive = true
        headerLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        headerLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07).isActive = true
        headerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.03).isActive = true
        logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.077).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.06).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0).isActive = true
        print(logoImageView.bounds)
        
    }
    
    func animateView() {
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
           // self.headerLabel.centerYAnchor.co -= 251
           // self.logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.03).isActive = true
            self.layoutIfNeeded()
        }, completion: nil
        )}
    
}


