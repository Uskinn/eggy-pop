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
        
        setupLogoImageConstraints()
        
        setupSoftButtonConstraint()
        setupMediumButtonConstraint()
        setupHardButtonConstraint()
        
        setupStartButtonConstraints()
    }
        
    func setupStartButtonConstraints() {
        addSubview(startButton)
        startButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: startButton, widthAncor: 0.927, heightAncor: 0.108, centerYAncor: 0.3, centerXAncor: 0.0)
    }
    
    func setupSoftButtonConstraint() {
        addSubview(softEggButton)
        softEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: softEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: -0.06, centerXAncor: -1.0)
    }
    
    func setupMediumButtonConstraint() {
        addSubview(mediumEggButton)
        mediumEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: mediumEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: 0.04, centerXAncor: 1.0)
    }
    
    func setupHardButtonConstraint() {
        addSubview(hardEggButton)
        hardEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: hardEggButton, widthAncor: 0.695, heightAncor: 0.082, centerYAncor: 0.14, centerXAncor: -1.0)
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: logoImageView, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.43, centerXAncor: 0.0)
    }
    
    func setupLargeEggButtonConstraints() {
        addSubview(largeEggButton)
        largeEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: largeEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0.0, centerXAncor: 0.0)
    }
    
    func setupExtraLargeEggButtonConstraints() {
        addSubview(extraLargeEggButton)
        extraLargeEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: extraLargeEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0.0, centerXAncor: 0.0)
    }
    
    func setupJumboEggButtonConstraints() {
        addSubview(jumboEggButton)
        jumboEggButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: jumboEggButton, widthAncor: 0.27, heightAncor: 0.21, centerYAncor: 0.0, centerXAncor: 0.0)
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
    
    func setSeconds() {
        if largeEggButton.titleLabel?.textColor == .white && self.softEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 390  // done
        }
        
        if self.largeEggButton.titleLabel?.textColor == .white && self.mediumEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 435 // done
        }
        
        if self.largeEggButton.titleLabel?.textColor == .white && self.hardEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 720 // done
        }
        
        if self.extraLargeEggButton.titleLabel?.textColor == .white && self.softEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 400 // done
        }
        
        if self.extraLargeEggButton.titleLabel?.textColor == .white && self.mediumEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 465 // done
        }
        
        if self.extraLargeEggButton.titleLabel?.textColor == .white && self.hardEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 720 // done
        }
        
        if self.jumboEggButton.titleLabel?.textColor == .white && self.softEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 420 // done
        }
        
        if self.jumboEggButton.titleLabel?.textColor == .white && self.mediumEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 510 // done
        }
        
        if self.jumboEggButton.titleLabel?.textColor == .white && self.hardEggButton.titleLabel?.textColor == .white {
            HomeScreenView.seconds = 4
        }
    }
    
    // MARK: - size button view when clicked
    func largeEggButtonViewWnenClicked() {
        largeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        largeEggButton.titleLabel?.textColor = .white
        
        extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
    
    func extraLargeEggButtonViewWnenClicked() {
        extraLargeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        extraLargeEggButton.titleLabel?.textColor = .white
        
        largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
    
    func jumboEggButtonViewWhenClicked() {
        jumboEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        jumboEggButton.titleLabel?.textColor = .white
        
        largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
    
    // MARK: - type button view when clicked
    func softButtonViewWhenClicked() {
        softEggButton.titleLabel?.textColor = .white
        softEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
    
    func mediumButtonViewWhenClicked() {
        mediumEggButton.titleLabel?.textColor = .white
        mediumEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        softEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
    
    func hardButtonViewWhenClicked() {
        hardEggButton.titleLabel?.textColor = .white
        hardEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        softEggButton.titleLabel?.textColor = Color.mainOrangeColor
    }
}

















