//
//  EggTypeController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

// constants
let appColor = Color()
let appImage = Image()

// logo
let appLogo = UIImageView()

// header
let headerLabel = UILabel()

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
    
    // egg type buttons
    var softButton = UIButton(type: .custom)
    var mediumButton = UIButton(type: .custom)
    var hardButton = UIButton(type: .custom)
    
    // info and thanks buttons
    var infoButton = UIButton(type: .custom)
    var thanksButton = UIButton(type: .custom)
    
    // start button
    var startButton = UIButton(type: .custom)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.shared.statusBarStyle = .lightContent
        BackgroundView.showBackground(in: self.view)
        
        setupAllButtons()
        
        sizeButtonsFirstLoad()
        animateHeaderAndLogo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if logoAndHeaderAppear {
            HeaderView.showHeader(in: self.view)
            LogoView.showLogo(in: self.view)
            print("willAppear")
        }
    }
    
    // MARK: - setup all buttons
    func setupAllButtons() {
        
        // MARK: - info button
        infoButton = EggButton.createButton(with: .information)
        infoButton.alpha = 0.0
        view.addSubview(infoButton)
        infoButton.addTarget(self, action: #selector(infoButtonClicked(_:)), for: .touchUpInside)
        
        // MARK: - thanks button
        thanksButton = EggButton.createButton(with: .thankYou)
        thanksButton.alpha = 0.0
        view.addSubview(thanksButton)
        thanksButton.addTarget(self, action: #selector(thanksButtonClicked(_:)), for: .touchUpInside)
        
        // MARK: - egg size buttons
        largeButton = EggButton.createButton(with: .largeEggSize)
        view.addSubview(largeButton)
        largeButton.addTarget(self, action: #selector(largeEggButtonCLicked(_:)), for: .touchUpInside)
        
        extraLargeButton = EggButton.createButton(with: .extraLargeSize)
        view.addSubview(extraLargeButton)
        extraLargeButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        
        jumboButton = EggButton.createButton(with: .jumboSize)
        view.addSubview(jumboButton)
        jumboButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
        
        // MARK: - egg type buttons
        isEggTypeChosen = false
        softButton = EggButton.createButton(with: .softType)
        softButton.center.x -= self.view.bounds.width
        view.addSubview(softButton)
        softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        
        mediumButton = EggButton.createButton(with: .mediumType)
        mediumButton.center.x += self.view.bounds.width
        view.addSubview(mediumButton)
        mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        
        hardButton = EggButton.createButton(with: .hardType)
        hardButton.center.x -= self.view.bounds.width
        view.addSubview(hardButton)
        hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        
        // MARK: - start button
        startButton = EggButton.createButton(with: .start)
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        self.view.addSubview(startButton)
        startButton.alpha = 0.0
    }
    
    // MARK: - thank you button action
    func thanksButtonClicked(_ button: UIButton) {
        print("clicked")
        
    }
    
    // MARK: - info button action
    func infoButtonClicked(_ button: UIButton) {
        // print("i clicked")
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
        
        animateAllButtons()
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
        
        animateAllButtons()
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
        
        animateAllButtons()
    }
    
    // MARK: - Egg type buttons action
    func softButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        
        softButton.titleLabel?.textColor = .white
        softButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        hardButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func mediumButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        
        mediumButton.titleLabel?.textColor = .white
        mediumButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        softButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        hardButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        hardButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func hardButtonCLicked(_ button: UIButton) {
        isEggTypeChosen = true
        
        hardButton.titleLabel?.textColor = .white
        hardButton.setBackgroundImage(appImage.filledEggTypeButtonImage, for: .normal)
        
        mediumButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
        
        softButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        softButton.titleLabel?.textColor = appColor.mainOrangeColor
    }
    
    func startButtonCLicked(_ button: UIButton) {
        if isEggTypeChosen == false {
        } else {
            logoAndHeaderAppear = true
            
            let controller = TimerViewController()
            self.present(controller, animated: true) {
                
                if self.largeButton.titleLabel?.textColor == .white && self.softButton.titleLabel?.textColor == .white {
                    seconds = 180  // works
                }
                
                if self.largeButton.titleLabel?.textColor == .white && self.mediumButton.titleLabel?.textColor == .white {
                    seconds = 240
                }
                
                if self.largeButton.titleLabel?.textColor == .white && self.hardButton.titleLabel?.textColor == .white {
                    seconds = 480
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && self.softButton.titleLabel?.textColor == .white {
                    seconds = 4
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && self.mediumButton.titleLabel?.textColor == .white {
                    seconds = 300
                }
                
                if self.extraLargeButton.titleLabel?.textColor == .white && self.hardButton.titleLabel?.textColor == .white {
                    seconds = 360
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && self.softButton.titleLabel?.textColor == .white {
                    seconds = 270
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && self.mediumButton.titleLabel?.textColor == .white {
                    seconds = 330
                }
                
                if self.jumboButton.titleLabel?.textColor == .white && self.hardButton.titleLabel?.textColor == .white {
                    seconds = 540
                }
            }
        }
    }
}

extension EggTypeController {
    
    // MARK: - animate all buttons
    func animateAllButtons() {
        moveEggSizeButtonsUp()
        moveEggTypeButtons()
        startButtonFadeOff()
    }
    
    // MARK: - egg size button first appear
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
    // MARK: - animate header and logo
    func animateHeaderAndLogo() {
        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
            headerLabel.center.y -= 251
            appLogo.center.y += 262
        }, completion: nil
        )
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
    
    // MARK: - Egg type buttons animation
    func moveEggTypeButtons() {
        if typeButtonOn == true {
            UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [], animations: {
                self.softButton.center.x += self.view.bounds.width
                self.mediumButton.center.x -= self.view.bounds.width
                self.hardButton.center.x += self.view.bounds.width
            },
                           completion: nil
            )
        }
        typeButtonOn = false
    }
    //MARK: - start button fade off
    func startButtonFadeOff() {
        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0, options: [], animations: {
            self.startButton.alpha = 1.0
            self.infoButton.alpha = 1.0
            self.thanksButton.alpha = 1.0
        },
                       completion: nil)
    }
}







