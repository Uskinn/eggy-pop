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
    }
    
    func largeEggButtonClicked(_ button: UIButton) {
        homeScreen.largeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = .white
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        homeScreen.jumboEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func jumbEggButtonClicked(_ button: UIButton) {
        homeScreen.jumboEggButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        homeScreen.jumboEggButton.titleLabel?.textColor = .white
        
        homeScreen.largeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.largeEggButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        homeScreen.extraLargeEggButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        homeScreen.extraLargeEggButton.titleLabel?.textColor = appColor.mainOrangeColor
    }


}
