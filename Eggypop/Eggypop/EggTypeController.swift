//
//  EggTypeController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

// buttons
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

// booleans
var isFilled: Bool = false
var cotegoryButtonOn: Bool = true
var typeButtonOn: Bool = true
var startButtonON: Bool = true

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
        
        header()
        logo()
        
        startButtonFunc()
        buttonsFirstLoad()
    }
    
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
    
    func header() {
        Label.headerLabel(headerLabel)
        self.view.addSubview(headerLabel)
    }
    
    func logo() {
        Logo.logo(appLogo)
        self.view.addSubview(appLogo)
    }
    
    func largeEggButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            largeButton.titleLabel?.textColor = .white
            largeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            
            extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        if isFilled == false {
            extraLargeButton.titleLabel?.textColor = .white
            extraLargeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            
            largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        if isFilled == false {
            jumboButton.titleLabel?.textColor = .white
            jumboButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
            
            largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        moveEggCotegoryButtonsUp()
        moveEggTypeButtons()
    }
    
    // MARK: animating buttons
    // moving three eggSize buttons up
    func moveEggCotegoryButtonsUp() {
        if cotegoryButtonOn == true {
            UIView.animate(withDuration: 0.4) {
                jumboButton.center.y -= 171
                largeButton.center.y -= 171
                extraLargeButton.center.y -= 171
                cotegoryButtonOn = false
            }
        }
    }
    
    // MARK: creating the eggType buttons
    func softEggType () {
        softButton.frame = CGRect(x: 17.00, y: 267.00, width: 341.00, height: 55.00)
        softButton.setTitle("soft", for: .normal)
        Button.eggTypeButton(softButton)
        softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(softButton)
    }
    
    func mediumEggType() {
        mediumButton.frame = CGRect(x: 17.00, y: 329.00, width: 341.00, height: 55.00)
        mediumButton.setTitle("medium", for: .normal)
        Button.eggTypeButton(mediumButton)
        mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(mediumButton)
    }
    
    func hardEggType() {
        hardButton.frame = CGRect(x: 17.00, y: 391.00, width: 341.00, height: 55.00)
        hardButton.setTitle("hard", for: .normal)
        Button.eggTypeButton(hardButton)
        hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(hardButton)
    }
    
    func softButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            softButton.titleLabel?.textColor = .white
            softButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
            
            mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
            hardButton.titleLabel?.textColor = appColor.mainOrangeColor
            startButtonFade()
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
            startButtonFade()
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
            startButtonFade()
        }
    }
    
    func moveEggTypeButtons() {
        if typeButtonOn == true {
            UIView.animate(withDuration: 0.5, delay: 0.3, options: [],
                           animations: {
                            softButton.center.x += self.view.bounds.width
                            mediumButton.center.x -= self.view.bounds.width
                            hardButton.center.x += self.view.bounds.width
            },
                           completion: nil
            )
        }
        typeButtonOn = false
    }
    
    func startButtonFunc() {
        Button.startButton(startButton)
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(startButton)
    }
    
    func startButtonFade() {
        UIView.animate(withDuration: 0.2, delay: 0.2, options: [],
                       animations: {
                        startButton.alpha = 1.0
        },
                       completion: nil
        )
    }
    
    func startButtonCLicked(_ button: UIButton) {
        // segue programmaticaly
        let controller = TimerViewController()
        present(controller, animated: true, completion: nil)
        
        if largeButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
            seconds = 4
        }
        
        if largeButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
            seconds = 240
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
    
    func buttonsFirstLoad() {
        softButton.center.x -= self.view.bounds.width
        mediumButton.center.x += self.view.bounds.width
        hardButton.center.x -= self.view.bounds.width
        startButton.alpha = 0.0
    }
}








