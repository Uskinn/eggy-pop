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
    
    var informationButton: UIButton = {
        let infoButton = UIButton()
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
        UIImageView().showBackground(in: self)
        
        configureFile()
    }
    
    func configureFile() {
        setupLargeEggButtonConstraints()
        setupExtraLargeEggButtonConstraints()
        setupJumboEggButtonConstraints()
        
        setupInfoButtonConstraints()
        setupThankYouButtonConstraints()
        
        setupHeaderLabelConstraints()
        setupLogoImageConstraints()
        
        setupSoftButtonConstraint()
        setupMediumButtonConstraint()
        setupHardButtonConstraint()
        
        setupStartButtonConstraints()
    }
    
    func setupStartButtonConstraints() {
        addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        startButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.927).isActive = true
        startButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.108).isActive = true
        startButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.3).isActive = true
        startButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * 0).isActive = true
        print("Inside setup start constr \(startButton.bounds)")
    }
    
    func setupSoftButtonConstraint() {
        addSubview(softEggButton)
        softEggButton.translatesAutoresizingMaskIntoConstraints = false
        softEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.695).isActive = true
        softEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.082).isActive = true
        softEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.06).isActive = true
        softEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * -1).isActive = true
    }
    
    func setupMediumButtonConstraint() {
        addSubview(mediumEggButton)
        mediumEggButton.translatesAutoresizingMaskIntoConstraints = false
        mediumEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.695).isActive = true
        mediumEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.082).isActive = true
        mediumEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.04).isActive = true
        mediumEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * 1).isActive = true
    }
    
    func setupHardButtonConstraint() {
        addSubview(hardEggButton)
        hardEggButton.translatesAutoresizingMaskIntoConstraints = false
        hardEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.695).isActive = true
        hardEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.082).isActive = true
        hardEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.14).isActive = true
        hardEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * -1).isActive = true
    }
    
    func setupInfoButtonConstraints() {
        addSubview(informationButton)
        informationButton.translatesAutoresizingMaskIntoConstraints = false
        informationButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.07).isActive = true
        informationButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.039).isActive = true
        informationButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.43).isActive = true
        informationButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * -0.4).isActive = true
    }
    
    func setupThankYouButtonConstraints() {
        addSubview(thankYouButton)
        thankYouButton.translatesAutoresizingMaskIntoConstraints = false
        thankYouButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.07).isActive = true
        thankYouButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.039).isActive = true
        thankYouButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.43).isActive = true
        thankYouButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * 0.4).isActive = true
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        headerLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07).isActive = true
        headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.43).isActive = true
        headerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.077).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.06).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.43).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupLargeEggButtonConstraints() {
        addSubview(largeEggButton)
        largeEggButton.translatesAutoresizingMaskIntoConstraints = false
        largeEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        largeEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        largeEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        largeEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupExtraLargeEggButtonConstraints() {
        addSubview(extraLargeEggButton)
        extraLargeEggButton.translatesAutoresizingMaskIntoConstraints = false
        extraLargeEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        extraLargeEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        extraLargeEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        extraLargeEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupJumboEggButtonConstraints() {
        addSubview(jumboEggButton)
        jumboEggButton.translatesAutoresizingMaskIntoConstraints = false
        jumboEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.27).isActive = true
        jumboEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.21).isActive = true
        jumboEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        jumboEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
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
            self.informationButton.alpha = 1
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

















