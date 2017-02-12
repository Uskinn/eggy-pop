//
//  SpalshScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class SpalshScreenView: UIView {
    
    var headerLabel: UILabel = {
        let header = UILabel()
        header.setupHeaderLabel()
        return header
    }()
    
    var logoImageView: UIImageView = {
        var logo = UIImageView()
        logo.setupLogoImage()
        return logo
    }()
    
    let backImage = Image()

    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        BackgroundView.showBackground(in: self)
        configureView()
    }
    
    func animateView() {
        print("INSIDE ANIMATE \(self.logoImageView.bounds)")
        UIView.animate(withDuration: 0.4) {
            self.headerLabel.transform = self.headerUp()
            self.logoImageView.transform = self.logoDown()
            self.layoutIfNeeded()
        }
    }
    func configureView() {
        setupHeaderLabelConstraints()
        setupLogoImageConstraints()
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        headerLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07).isActive = true
        headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        headerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.077).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.06).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.03).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        print("Inside setup logoconstr \(logoImageView.bounds)")
        
    }
    
    func logoDown() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 0, y: 251)
        return moveTransform
    }
    
    func headerUp() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 0, y: -251)
        return moveTransform
    }
}





















