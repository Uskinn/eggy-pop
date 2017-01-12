//
//  EggTypeController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

let largeButton = UIButton(type: .system)
let extraLargeButton = UIButton(type: .system)
let jumboButton = UIButton(type: .system)

let softButton = UIButton(type: .system)
let mediumButton = UIButton(type: .system)
let hardButton = UIButton(type: .system)

let startButton = UIButton(type: .system)

let appLogo = UIImageView()
let headerLabel = UILabel()

let appColor = Color()
let appImage = Image()

// Booleans
var isFilled: Bool = false
var cotegoryButtonOn: Bool = true
var typeButtonOn: Bool = true
var startButtonON: Bool = true
var isAnimated: Bool = true

class EggTypeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        largeEggButton()
        extraLargeEggButton()
        jumboEggButton()
        
        softEggType()
        mediumEggType()
        hardEggType()
        
        startButtonFunc()
        buttonsFirstLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        header()
        logo()
    }
    
    func buttonsFirstLoad() {
        softButton.center.x -= self.view.bounds.width
        mediumButton.center.x += self.view.bounds.width
        hardButton.center.x -= self.view.bounds.width
        startButton.alpha = 0.0
    }
    
    // #MARK: Header
    func header() {
        Label.headerLabel(headerLabel)
        self.view.addSubview(headerLabel)
    }
    
    // #MARK: Logo
    func logo() {
        Logo.logo(appLogo)
        self.view.addSubview(appLogo)
    }
    
    // #MARK: Egg category buttons view
    func largeEggButton() {
        
        largeButton.frame = CGRect(x: 17.00, y: 265.00, width: 100.00, height: 138.00)
        largeButton.setTitle("large", for: .normal)
        Button.eggCategoryButton(largeButton)
        largeButton.addTarget(self, action: #selector(largeEggButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(largeButton)
    }
    
    func extraLargeEggButton() {
        extraLargeButton.frame = CGRect(x: 138.00, y: 265.00, width: 100.00, height: 138.00)
        extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        // adding two lines of text
        extraLargeButton.titleLabel!.lineBreakMode = .byWordWrapping
        extraLargeButton.titleLabel!.textAlignment = .center
        extraLargeButton.setTitle("extra\nlarge", for: .normal)
        
        Button.eggCategoryButton(extraLargeButton)
        extraLargeButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        view.addSubview(extraLargeButton)
    }
    
    func jumboEggButton() {
        jumboButton.frame = CGRect(x: 258.00, y: 265.00, width: 100.00, height: 138.00)
        jumboButton.setTitle("jumbo", for: .normal)
        Button.eggCategoryButton(jumboButton)
        jumboButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
        view.addSubview(jumboButton)
    }
    
    // #MARK: Egg category buttons aaction
    func largeEggButtonCLicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: largeButton)
        
        if isFilled == false {
            extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        
        if isAnimated {
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
                AnimateButton.animateButtonOutside(myButton: largeButton)
                
                largeButton.titleLabel?.textColor = .white
                largeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            }, completion: nil)
        }
        isAnimated = false
        
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: extraLargeButton)
        
        if isFilled == false {
            largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        
        if isAnimated {
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
                AnimateButton.animateButtonOutside(myButton: extraLargeButton)
                
                extraLargeButton.titleLabel?.textColor = .white
                extraLargeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            }, completion: nil)
        }
        isAnimated = false
        
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: jumboButton)
        
        if isFilled == false {
            largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        
        if isAnimated {
            UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
                AnimateButton.animateButtonOutside(myButton: jumboButton)
                
                jumboButton.titleLabel?.textColor = .white
                jumboButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            }, completion: nil)
        }
        isAnimated = false
        
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    // MARK: Moving egg category buttons up
    func moveEggCotegoryButtonsUp() {
        if cotegoryButtonOn == true {
            UIView.animate(withDuration: 0.33, delay: 0.0, options: [.curveEaseInOut], animations: {
                jumboButton.center.y -= 162
                largeButton.center.y -= 162
                extraLargeButton.center.y -= 162
                cotegoryButtonOn = false
            }, completion: nil
            )
        }
    }
    
    // MARK: Egg type buttons view
    func softEggType () {
        softButton.frame = CGRect(x: 17.00, y: 260.00, width: 341.00, height: 55.00)
        softButton.setTitle("soft", for: .normal)
        Button.eggTypeButton(softButton)
        softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(softButton)
    }
    
    func mediumEggType() {
        mediumButton.frame = CGRect(x: 17.00, y: 322.00, width: 341.00, height: 55.00)
        mediumButton.setTitle("medium", for: .normal)
        Button.eggTypeButton(mediumButton)
        mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(mediumButton)
    }
    
    func hardEggType() {
        hardButton.frame = CGRect(x: 17.00, y: 384.00, width: 341.00, height: 55.00)
        hardButton.setTitle("hard", for: .normal)
        Button.eggTypeButton(hardButton)
        hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(hardButton)
    }
    
    // MARK: Egg type buttons action
    func softButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            softButton.titleLabel?.textColor = .white
            softButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
            
            mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            hardButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
    }
    
    func mediumButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            mediumButton.titleLabel?.textColor = .white
            mediumButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
            
            softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            softButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            hardButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
    }
    
    func hardButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            hardButton.titleLabel?.textColor = .white
            hardButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
            
            mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            softButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
    }
    
    // MARK: Egg type buttons animation
    func moveEggTypeButtons() {
        if typeButtonOn == true {
            UIView.animate(withDuration: 1.2, delay: 0.4, usingSpringWithDamping: 0.55, initialSpringVelocity: 0.0, options: [], animations: {
                softButton.center.x += self.view.bounds.width
                mediumButton.center.x -= self.view.bounds.width
                hardButton.center.x += self.view.bounds.width
            },
                           completion: nil
            )
        }
        typeButtonOn = false
    }
    
    // MARK: Start button
    func startButtonFunc() {
        Button.startButton(startButton)
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(startButton)
    }
    
    func startButtonFade() {
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0, options: [], animations: {
            startButton.alpha = 1.0
        }, completion: nil)
    }
    
    func startButtonCLicked(_ button: UIButton) {
        
        let controller = TimerViewController()
        present(controller, animated: true) {
        
            
            if largeButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                seconds = 180  // works
            }
            
            if largeButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                seconds = 4
            }
            
            if largeButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                seconds = 300
            }
            
            if extraLargeButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                seconds = 240
            }
            
            if extraLargeButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                seconds = 300
            }
            
            if extraLargeButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                seconds = 360
            }
            
            if jumboButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                seconds = 300
            }
            
            if jumboButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                seconds = 360
            }
            
            if jumboButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                seconds = 460
            }
        }
    }
}








