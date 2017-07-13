//
//  SpalshScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class SpalshScreenView: UIView {
    
   lazy var headerLabel: UILabel = {
        let header = UILabel()
        header.setupHeaderLabel()
        return header
    }()
    
   lazy var logoImageView: UIImageView = {
        var logo = UIImageView()
        logo.setupLogoImage()
        return logo
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        UIImageView().showBackgroundImage(in: self)
        setupLogoImageConstraints()
    }
    
    func animateView() {
        
        
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
            self.headerLabel.transform = self.headerUp()
            self.logoImageView.transform = self.logoDown()
            self.layoutIfNeeded()
        }, completion: { finished in
            DispatchQueue.main.async {
                let homeScreenVC = UINavigationController(rootViewController: HomeScreenViewController())
                let appDelegate = UIApplication.shared.delegate as? AppDelegate
                appDelegate?.window?.rootViewController = homeScreenVC
            }
        })
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: logoImageView, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.03, centerXAncor: 0.0)
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
























