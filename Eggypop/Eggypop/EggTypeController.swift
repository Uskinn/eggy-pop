//
//  EggTypeController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

// egg type buttons
let softButton = UIButton(type: .custom)
let mediumButton = UIButton(type: .custom)
let hardButton = UIButton(type: .custom)

// logo
let appLogo = UIImageView()

// header
let headerLabel = UILabel()

// constants
let appColor = Color()
let appImage = Image()

// Booleans
var sizeButtonOn: Bool = true
var typeButtonOn: Bool = true
var isAnimated: Bool = true
var isEggTypeChosen: Bool = true
var logoAndHeaderAppear: Bool = true
var logoAndHeaderDidAnimate: Bool = false

class EggTypeController: UIViewController {
    
    // egg size buttons
    var largeButton = UIButton(type: .custom)
    var extraLargeButton = UIButton(type: .custom)
    var jumboButton = UIButton(type: .custom)
    
    // info and thanks buttons
    var infoButton = UIButton(type: .custom)
    var thanksButton = UIButton(type: .custom)
    
    // start button
    var startButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        BackgroundView.showBackground(in: self.view)
        
        softEggType()
        mediumEggType()
        hardEggType()
        
        buttonsFirstLoad()
        
        createAllButtons()
        
        sizeButtonsFirstLoad()
        animateHeaderAndLogo()
    }
    
    func setupAllButtons() {
        infoButton = EggButton.createButton(with: .information)
        infoButton.alpha = 0.0
        view.addSubview(infoButton)
        infoButton.addTarget(self, action: #selector(infoButtonClicked(_:)), for: .touchUpInside)
        
        thanksButton = EggButton.createButton(with: .thankYou)
        thanksButton.alpha = 0.0
        view.addSubview(thanksButton)
        thanksButton.addTarget(self, action: #selector(thanksButtonClicked(_:)), for: .touchUpInside)
    }
    
    func createAllButtons() {
        largeEggButton()
        extraLargeEggButton()
        jumboEggButton()
        
        setupStartButton()

        setupAllButtons()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if logoAndHeaderAppear == true {
            HeaderView.showHeader(in: self.view)
            LogoView.showLogo(in: self.view)
            print("willAppear")
        }
    }

    func animateHeaderAndLogo() {
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
            headerLabel.center.y -= 251
            appLogo.center.y += 262
        }, completion: nil
        )
    }
    
    func buttonsFirstLoad() {
        softButton.center.x -= self.view.bounds.width
        mediumButton.center.x += self.view.bounds.width
        hardButton.center.x -= self.view.bounds.width
    }
    
    func thanksButtonClicked(_ button: UIButton) {
        print("clicked")
        
    }
    
    func infoButtonClicked(_ button: UIButton) {
       // print("i clicked")
    }
    
    // MARK: - Egg size buttons
    func largeEggButton() {
        largeButton = EggButton.createButton(with: .largeEggSize)
        view.addSubview(largeButton)
        largeButton.addTarget(self, action: #selector(largeEggButtonCLicked(_:)), for: .touchUpInside)
    }
    
    func extraLargeEggButton() {
        extraLargeButton = EggButton.createButton(with: .extraLargeSize)
        view.addSubview(extraLargeButton)
        extraLargeButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
    }
    
    func jumboEggButton() {
        jumboButton = EggButton.createButton(with: .jumboSize)
        view.addSubview(jumboButton)
        jumboButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
    }
    
    // #MARK: - Egg size buttons action
    func largeEggButtonCLicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: largeButton)
        
        largeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = .white
        
        extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.largeButton)
            
        }, completion: nil)
        
        isAnimated = false
        
        moveEggSizeButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: extraLargeButton)
        
        largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        jumboButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        extraLargeButton.titleLabel?.textColor = .white
        extraLargeButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.extraLargeButton)
        }, completion: nil)
        
        isAnimated = false
        
        moveEggSizeButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: jumboButton)
        
        largeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        extraLargeButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        jumboButton.titleLabel?.textColor = .white
        jumboButton.setBackgroundImage(appImage.filledEggCategoryButtonImage, for: .normal)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.jumboButton)
        }, completion: nil)
        
        isAnimated = false
        
        moveEggSizeButtonsUp()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func sizeButtonsFirstLoad() {
        if logoAndHeaderAppear == true && logoAndHeaderDidAnimate == false {
            HeaderView.showHeader(in: self.view)
            LogoView.showLogo(in: self.view)
            UIView.animate(withDuration: 0.3, delay: 0.7, usingSpringWithDamping: 0.0, initialSpringVelocity: 0.0, options: [], animations: {
                self.largeButton.alpha = 1.0
                self.extraLargeButton.alpha = 1.0
                self.jumboButton.alpha = 1.0
            },
                           completion: nil)
        }
        logoAndHeaderAppear = false
        logoAndHeaderDidAnimate = true
    }

    // MARK: - Move egg size buttons up
    func moveEggSizeButtonsUp() {
        if sizeButtonOn == true {
            UIView.animate(withDuration: 0.33, delay: 0.0, options: [.curveEaseInOut], animations: {
                self.jumboButton.center.y -= 162
                
                self.largeButton.center.y -= 162
                self.extraLargeButton.center.y -= 162
                sizeButtonOn = false
            }, completion: nil
            )
        }
    }
    
    // MARK: - Egg type buttons
    func softEggType() {
        isEggTypeChosen = false
        softButton.frame = CGRect(x: 57.00, y: 261.00, width: 261.00, height: 55.00)
        softButton.setTitle("soft", for: .normal)
        Button.eggTypeButton(softButton)
        softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(softButton)
    }
    
    func mediumEggType() {
        mediumButton.frame = CGRect(x: 57.00, y: 325.00, width: 261.00, height: 55.00)
        mediumButton.setTitle("medium", for: .normal)
        Button.eggTypeButton(mediumButton)
        
        mediumButton.titleLabel?.textColor = .white
        mediumButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(mediumButton)
    }
    
    func hardEggType() {
        hardButton.frame = CGRect(x: 57.00, y: 389.00, width: 261.00, height: 55.00)
        hardButton.setTitle("hard", for: .normal)
        Button.eggTypeButton(hardButton)
        hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        view.addSubview(hardButton)
    }
    
    // MARK: - Egg type buttons action
    func softButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        startButton.isEnabled = true
        
        softButton.titleLabel?.textColor = .white
        softButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        hardButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func mediumButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        startButton.isEnabled = true
        
        mediumButton.titleLabel?.textColor = .white
        mediumButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        softButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        hardButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func hardButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        startButton.isEnabled = true
        
        hardButton.titleLabel?.textColor = .white
        hardButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        softButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    
    // MARK: - Egg type buttons animation
    func moveEggTypeButtons() {
        if typeButtonOn == true {
            UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [], animations: {
                softButton.center.x += self.view.bounds.width
                mediumButton.center.x -= self.view.bounds.width
                hardButton.center.x += self.view.bounds.width
            },
                           completion: nil
            )
        }
        typeButtonOn = false
    }
    
    // MARK: - Start button
    func setupStartButton() {
        startButton = EggButton.createButton(with: .start)
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        self.view.addSubview(startButton)
        startButton.alpha = 0.0
    }
    
    func startButtonFade() {
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0, options: [], animations: {
            self.startButton.alpha = 1.0
            self.infoButton.alpha = 1.0
            self.thanksButton.alpha = 1.0
        },
                       completion: nil)
    }
    
    func startButtonCLicked(_ button: UIButton) {
        if isEggTypeChosen == false {
        } else {
            logoAndHeaderAppear = true
            
            let controller = TimerViewController()
            self.present(controller, animated: true) {
                
                if self.largeButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                    seconds = 180  // works
                }
                
                if self.largeButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                    seconds = 240
                }
                
                if self.largeButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                    seconds = 480
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                    seconds = 4
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                    seconds = 300
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                    seconds = 360
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && softButton.titleLabel?.textColor == .white {
                    seconds = 270
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && mediumButton.titleLabel?.textColor == .white {
                    seconds = 330
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && hardButton.titleLabel?.textColor == .white {
                    seconds = 540
                }
            }
        }
    }
}








