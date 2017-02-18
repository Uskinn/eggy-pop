//
//  SpalshScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class SpalshScreenView: UIView {
    
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        UIImageView().showBackgroundImage(in: self)
        configureView()
    }
    
    func animateView() {
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
            self.headerLabel.transform = self.headerUp()
            self.logoImageView.transform = self.logoDown()
            self.layoutIfNeeded()
        }, completion: { finished in
            DispatchQueue.main.async {
                let homeScreenVC = UINavigationController(rootViewController: HomeScreenViewController())
                weak var appDelegate = UIApplication.shared.delegate as? AppDelegate
                appDelegate?.window?.rootViewController = homeScreenVC
            }
        })
    }
    
    func configureView() {
        setupHeaderLabelConstraints()
        setupLogoImageConstraints()
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: headerLabel, widthAncor: 0.5, heightAncor: 0.04, centerYAncor: -0.03, centerXAncor: 0)
        print(headerLabel.frame)
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: logoImageView, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.03, centerXAncor: 0)
    }
    
    func logoDown() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height * 0.4)
        return moveTransform
    }
    
    func headerUp() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height * -0.4)
        return moveTransform
    }
}
























