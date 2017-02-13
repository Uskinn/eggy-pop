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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeScreen)
        
        homeScreen.layoutSubviews()
        eggButtonAction()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.homeScreen.animateEggs()
        }
    }
    
    func eggButtonAction() {
        homeScreen.largeEggButton.addTarget(self, action: #selector(largeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.extraLargeEggButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.jumboEggButton.addTarget(self, action: #selector(jumbEggButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.informationButton.addTarget(self, action: #selector(infoButtonClicked(_:)), for: .touchUpInside)
        homeScreen.thankYouButton.addTarget(self, action: #selector(thankYouButtonClicked(_:)), for: .touchUpInside)
        
        homeScreen.softEggButton.addTarget(self, action: #selector(softEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.mediumEggButton.addTarget(self, action: #selector(mediumEggButtonClicked(_:)), for: .touchUpInside)
        homeScreen.hardEggButton.addTarget(self, action: #selector(hardEggButtonClicked(_:)), for: .touchUpInside)
    }
    
    func largeEggButtonClicked(_ button: UIButton) {
        homeScreen.largeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = .white
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
    }
    
    func jumbEggButtonClicked(_ button: UIButton) {
        homeScreen.jumboEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.animateEggSizeButtons()
        homeScreen.animateEggTypeButttons()
    }
    
    func softEggButtonClicked(_ button: UIButton) {
        homeScreen.softEggButton.titleLabel?.textColor = .white
        homeScreen.softEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.startButton.alpha = 1
    }
    
    func mediumEggButtonClicked(_ button: UIButton) {
        homeScreen.mediumEggButton.titleLabel?.textColor = .white
        homeScreen.mediumEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.softEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.hardEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.hardEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.startButton.alpha = 1
    }

    func hardEggButtonClicked(_ button: UIButton) {
        homeScreen.hardEggButton.titleLabel?.textColor = .white
        homeScreen.hardEggButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
        
        homeScreen.mediumEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.mediumEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.softEggButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        homeScreen.softEggButton.titleLabel?.textColor = Color.mainOrangeColor
        
        homeScreen.startButton.alpha = 1
    }

    func infoButtonClicked(_ button: UIButton) {
        
    }
    
    func thankYouButtonClicked(_ button: UIButton) {
        
    }
    
}
