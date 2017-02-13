//
//  HomeScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class HomeScreenView: UIView {
    
    var largeEggButton: UIButton = {
        let largeEgg = UIButton()
        largeEgg.setupLargeButton()
        return largeEgg
    }()
    
    var extraLargeEggButton: UIButton = {
        let extraLargeEgg = UIButton()
        extraLargeEgg.setupExtraLargeButton()
        return extraLargeEgg
    }()
    
    var jumboEggButton: UIButton = {
        let jumboEgg = UIButton()
        jumboEgg.setupJumboButton()
        return jumboEgg
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        UIImageView().showBackground(in: self)
        
        setupLargeEggButtonConstraints()
        setupExtraLargeEggButtonConstraints()
        setupJumboEggButtonConstraints()
    }
    
    func setupLargeEggButtonConstraints() {
        addSubview(largeEggButton)
        largeEggButton.translatesAutoresizingMaskIntoConstraints = false
        largeEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        largeEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        largeEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.0).isActive = true
        largeEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        print("Inside setup large constr \(largeEggButton.bounds)")
    }
    
    func setupExtraLargeEggButtonConstraints() {
        addSubview(extraLargeEggButton)
        extraLargeEggButton.translatesAutoresizingMaskIntoConstraints = false
        extraLargeEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        extraLargeEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        extraLargeEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.0).isActive = true
        extraLargeEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        print("Inside setup constr extra large \(extraLargeEggButton.bounds)")
    }
    
    func setupJumboEggButtonConstraints() {
        addSubview(jumboEggButton)
        jumboEggButton.translatesAutoresizingMaskIntoConstraints = false
        jumboEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        jumboEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        jumboEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.0).isActive = true
        jumboEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        print("Inside setup constr extra large \(jumboEggButton.bounds)")
    }
    
    func largeEggLeft() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: -120, y: 0)
        return moveTransform
    }
    
    func jumboEggRight() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 120, y: 0)
        return moveTransform
    }
    
    func animateEggs() {
        UIView.animate(withDuration: 0.11, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {
            self.largeEggButton.transform = self.largeEggLeft()
            self.jumboEggButton.transform = self.jumboEggRight()
            self.layoutIfNeeded()
        }, completion: { finished in
            self.largeEggButton.titleLabel?.alpha = 1
            self.extraLargeEggButton.titleLabel?.alpha = 1
            self.jumboEggButton.titleLabel?.alpha = 1
        })
    }
}

















