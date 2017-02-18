//
//  HomeScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class HomeScreenView: UIView {
    
    static var seconds: Int = 0
    
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
    
    var startButton: UIButton = {
        let start = UIButton()
        start.setupStartButton()
        return start
    }()
    
    var softEggButton: UIButton = {
        let soft = UIButton()
        soft.setupSoftEggButton()
        return soft
    }()
    
    var mediumEggButton: UIButton = {
        let medium = UIButton()
        medium.setupMediumEggButton()
        return medium
    }()
    
    var hardEggButton: UIButton = {
        let hard = UIButton()
        hard.setupHardEggButton()
        return hard
    }()
    
    var informationButton: UIBarButtonItem = {
        let infoButton = UIBarButtonItem()
        infoButton.setupInformationButton()
        return infoButton
    }()
    
    var thankYouButton: UIButton = {
        let thanks = UIButton()
        thanks.setupThankYouButton()
        return thanks
    }()
    
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
        UIImageView().showBackgroundImage(in: self)
        configureFile()
    }
    
    func configureFile() {
        setupLargeEggButtonConstraints()
        setupExtraLargeEggButtonConstraints()
        setupJumboEggButtonConstraints()
        
        //setupInfoButtonConstraints()
       // setupThankYouButtonConstraints()
        
        setupLogoImageConstraints()
        
        setupSoftButtonConstraint()
        setupMediumButtonConstraint()
        setupHardButtonConstraint()
        
        setupStartButtonConstraints()
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    
    func setupStartButtonConstraints() {
        addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: startButton, widthAncor: 0.927, heightAncor: 0.108, centerYAncor: 0.3, centerXAncor: 0)
    }
    
    func setupSoftButtonConstraint() {
        addSubview(softEggButton)
        softEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: softEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: -0.06, centerXAncor: -1.0)
    }
    
    func setupMediumButtonConstraint() {
        addSubview(mediumEggButton)
        mediumEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: mediumEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: 0.04, centerXAncor: 1.0)
    }
    
    func setupHardButtonConstraint() {
        addSubview(hardEggButton)
        hardEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: hardEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: 0.14, centerXAncor: -1.0)
    }
    
//    func setupInfoButtonConstraints() {
//        addSubview(informationButton)
//        informationButton.translatesAutoresizingMaskIntoConstraints = false
//        self.setupConstraintsFor(subView: informationButton, widthAncor: 0.07, heightAncor: 0.039, centerYAncor: -0.425, centerXAncor: -0.4)
//    }
    
//    func setupThankYouButtonConstraints() {
//        addSubview(thankYouButton)
//        thankYouButton.translatesAutoresizingMaskIntoConstraints = false
//        self.setupConstraintsFor(subView: thankYouButton, widthAncor: 0.07, heightAncor: 0.039, centerYAncor: -0.425, centerXAncor: 0.4)
//    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: logoImageView, widthAncor: 0.077, heightAncor: 0.06,centerYAncor: 0.43, centerXAncor: 0)
    }
    
    func setupLargeEggButtonConstraints() {
        addSubview(largeEggButton)
        largeEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: largeEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0, centerXAncor: 0)
    }
    
    func setupExtraLargeEggButtonConstraints() {
        addSubview(extraLargeEggButton)
        extraLargeEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: extraLargeEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0, centerXAncor: 0)
    }
    
    func setupJumboEggButtonConstraints() {
        addSubview(jumboEggButton)
        jumboEggButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: jumboEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0, centerXAncor: 0)
    }
    
    // MARK: - Move egg size buttons to the sides
    func largeEggLeft() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * -0.31, y: 0)
        return moveTransform
    }
    
    func jumboEggRight() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * 0.31, y: 0)
        return moveTransform
    }
    
    // MARK: - animate eggs
    func animateEggs() {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: [.curveEaseInOut], animations: {
            self.largeEggButton.transform = self.largeEggLeft()
            self.jumboEggButton.transform = self.jumboEggRight()
            self.layoutIfNeeded()
        }, completion: { finished in
            self.largeEggButton.titleLabel?.alpha = 1
            self.extraLargeEggButton.titleLabel?.alpha = 1
            self.jumboEggButton.titleLabel?.alpha = 1
           // self.informationButton.alpha = 1
            self.thankYouButton.alpha = 1
        })
    }
    
    // MARK: - Move egg size buttons up
    func moveLargeEggSizeButtonUp() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * -0.31, y: UIScreen.main.bounds.height * -0.25)
        return moveTransform
    }
    
    func moveExtraLargeEggSizeButtonUp() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: 0, y: UIScreen.main.bounds.height * -0.25)
        return moveTransform
    }
    
    func moveJumboEggSizeButtonUp() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * 0.31, y: UIScreen.main.bounds.height * -0.25)
        return moveTransform
    }
    
    // MARK: - animate egg size buttons
    func animateEggSizeButtons() {
        UIView.animate(withDuration: 0.2, delay: 0.01, usingSpringWithDamping: 0.9, initialSpringVelocity: 0.1, options: [.curveEaseIn], animations: {
            self.largeEggButton.transform = self.moveLargeEggSizeButtonUp()
            self.extraLargeEggButton.transform = self.moveExtraLargeEggSizeButtonUp()
            self.jumboEggButton.transform = self.moveJumboEggSizeButtonUp()
            self.layoutIfNeeded()
        }, completion: nil)
    }
    
    // MARK: - Move egg type buttons
    func moveSoftEggButtonRight() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * 1, y: 0)
        return moveTransform
    }
    
    func moveMediumEggButtonLeft() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * -1, y: 0)
        return moveTransform
    }
    
    func moveHardEggButtonRight() -> CGAffineTransform {
        let moveTransform: CGAffineTransform = CGAffineTransform(translationX: UIScreen.main.bounds.width * 1, y: 0)
        return moveTransform
    }
    
    // MARK: - animate egg type buttons
    func animateEggTypeButttons() {
        UIView.animate(withDuration: 0.3, delay: 0.1, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: [], animations: {
            self.softEggButton.transform = self.moveSoftEggButtonRight()
            self.mediumEggButton.transform = self.moveMediumEggButtonLeft()
            self.hardEggButton.transform = self.moveHardEggButtonRight()
            self.layoutIfNeeded()
        }, completion: nil)
    }
}

















