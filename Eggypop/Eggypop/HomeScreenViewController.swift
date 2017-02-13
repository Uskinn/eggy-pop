//
//  HomeScreenViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit



class HomeScreenViewController: UIViewController {
    
    let homeScreen = HomeScreenView()
    var isEggAnimated = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeScreen)
        
        homeScreen.layoutSubviews()

        buttonActions()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.homeScreen.animateEggs()

            if self.isEggAnimated {
            self.homeScreen.animateEggSizeButtons()
            }
        }
    }
    
    func buttonActions() {
        homeScreen.largeEggButton.addTarget(self, action: #selector(largeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.extraLargeEggButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.jumboEggButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.informationButton.addTarget(self, action: #selector(infoButtonClicked(_:)), for: .touchUpInside)
        homeScreen.thankYouButton.addTarget(self, action: #selector(thankYouButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.softEggButton.addTarget(self, action: #selector(softEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.mediumEggButton.addTarget(self, action: #selector(mediumEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.hardEggButton.addTarget(self, action: #selector(hardEggButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.startButton.addTarget(self, action: #selector(startButtonClicked(_:)), for: .touchUpInside)
    }
    
    func largeEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.largeEggButton)

        homeScreen.largeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = .white
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.largeEggButton)
        }, completion: nil)
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.extraLargeEggButton)

        homeScreen.extraLargeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.extraLargeEggButton)
        }, completion: nil)
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.jumboEggButton)

        homeScreen.jumboEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.jumboEggButton)
        }, completion: nil)
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
        self.isEggAnimated = true
    }
    
    func softEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.softEggButton)

        homeScreen.softEggButton.titleLabel?.textColor = .white
        homeScreen.softEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.softEggButton)
        }, completion: nil)
        
        homeScreen.startButton.alpha = 1
    }
    
    func mediumEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.mediumEggButton)

        homeScreen.mediumEggButton.titleLabel?.textColor = .white
        homeScreen.mediumEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.softEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.mediumEggButton)
        }, completion: nil)
        
        homeScreen.startButton.alpha = 1
    }

    func hardEggButtonClicked(_ button: UIButton) {
        AnimateButton.animateButtonInside(myButton: homeScreen.hardEggButton)
        
        homeScreen.hardEggButton.titleLabel?.textColor = .white
        homeScreen.hardEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.softEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.homeScreen.hardEggButton)
        }, completion: nil)

        homeScreen.startButton.alpha = 1
    }

    func infoButtonClicked(_ button: UIButton) {
        
    }
    
    func thankYouButtonClicked(_ button: UIButton) {
        
    }
    
    func startButtonClicked(_ button: UIButton) {
        
        let controller = EggTimerViewController()
        self.present(controller, animated: true) {
            
            if self.homeScreen.largeEggButton.titleLabel?.textColor == .white && self.homeScreen.softEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 390  // done
            }
            
            if self.homeScreen.largeEggButton.titleLabel?.textColor == .white && self.homeScreen.mediumEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 420 // done
            }
            
            if self.homeScreen.largeEggButton.titleLabel?.textColor == .white && self.homeScreen.hardEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 720 // done
            }
            
            if self.homeScreen.extraLargeEggButton.titleLabel?.textColor == .white && self.homeScreen.softEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 4
            }
            
            if self.homeScreen.extraLargeEggButton.titleLabel?.textColor == .white && self.homeScreen.mediumEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 300
            }
            
            if self.homeScreen.extraLargeEggButton.titleLabel?.textColor == .white && self.homeScreen.hardEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 360
            }
            
            if self.homeScreen.jumboEggButton.titleLabel?.textColor == .white && self.homeScreen.softEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 270
            }
            
            if self.homeScreen.jumboEggButton.titleLabel?.textColor == .white && self.homeScreen.mediumEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 330
            }
            
            if self.homeScreen.jumboEggButton.titleLabel?.textColor == .white && self.homeScreen.hardEggButton.titleLabel?.textColor == .white {
                HomeScreenView.seconds = 540
            }
        }
    }
}


