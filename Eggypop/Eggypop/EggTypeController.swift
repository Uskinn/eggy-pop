//
//  EggTypeController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

// logo
let appLogo = UIImageView()

var logoAndHeaderAppear: Bool = true
var logoAndHeaderDidAnimate: Bool = false

class EggTypeController: UIViewController {
    // header
    let headerLabel = UILabel()
    
    // Booleans
    var sizeButtonOn: Bool = true
    var typeButtonOn: Bool = true
    var isAnimated: Bool = true
    var isTypeButtonChecked: Bool = true
    
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
       // BackgroundView.showBackground(in: self.view)
        
        setupAllButtons()
        
      //  sizeButtonsFirstLoad()
       // animateHeaderAndLogo()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
//        if logoAndHeaderAppear {
//            HeaderView.showHeader(in: self.view)
//            LogoView.showLogo(in: self.view)
//            print("willAppear")
//        }
    }
    
    // MARK: - setup all buttons
    func setupAllButtons() {
        // setup info button
        infoButton = EggButton.createButton(with: .information)
        infoButton.alpha = 0.0
        view.addSubview(infoButton)
       // infoButton.addTarget(self, action: #selector(infoButtonClicked(_:)), for: .touchUpInside)
        
        // setup thanks button
        thanksButton = EggButton.createButton(with: .thankYou)
        thanksButton.alpha = 0.0
        view.addSubview(thanksButton)
       // thanksButton.addTarget(self, action: #selector(thanksButtonClicked(_:)), for: .touchUpInside)
        
        // setup egg size buttons
        largeButton = EggButton.createButton(with: .largeEggSize)
        view.addSubview(largeButton)
        largeButton.addTarget(self, action: #selector(largeEggButtonCLicked(_:)), for: .touchUpInside)
        
        extraLargeButton = EggButton.createButton(with: .extraLargeSize)
        view.addSubview(extraLargeButton)
        extraLargeButton.addTarget(self, action: #selector(extraLargeEggButtonClicked(_:)), for: .touchUpInside)
        
        jumboButton = EggButton.createButton(with: .jumboSize)
        view.addSubview(jumboButton)
        jumboButton.addTarget(self, action: #selector(jumboEggButtonClicked(_:)), for: .touchUpInside)
        
        softButton = EggButton.createButton(with: .softType)
        softButton.center.x -= self.view.bounds.width
        view.addSubview(softButton)
       // softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        
        mediumButton = EggButton.createButton(with: .mediumType)
        mediumButton.center.x += self.view.bounds.width
        view.addSubview(mediumButton)
       // mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        
        hardButton = EggButton.createButton(with: .hardType)
        hardButton.center.x -= self.view.bounds.width
        view.addSubview(hardButton)
      //  hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        
        // setup start button
        startButton = EggButton.createButton(with: .start)
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        self.view.addSubview(startButton)
        startButton.alpha = 0.0
    }
    
//    // MARK: - thank you button action
//    func thanksButtonClicked(_ button: UIButton) {
//        print("clicked")
//        
//    }
//    
//    // MARK: - info button action
//    func infoButtonClicked(_ button: UIButton) {
//        // print("i clicked")
//    }
    
    // #MARK: - Egg size buttons action
    func largeEggButtonCLicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: largeButton)
        
        largeButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = .white
        
        extraLargeButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        extraLargeButton.titleLabel?.textColor = Color.mainOrangeColor
        
        jumboButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        jumboButton.titleLabel?.textColor = Color.mainOrangeColor
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.largeButton)
            
        }, completion: nil)
        
        isAnimated = false
        
      //  animateAllButtons()
    }
    
    func extraLargeEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: extraLargeButton)
        
        largeButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = Color.mainOrangeColor
        
        jumboButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        jumboButton.titleLabel?.textColor = Color.mainOrangeColor
        
        extraLargeButton.titleLabel?.textColor = .white
        extraLargeButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.extraLargeButton)
        }, completion: nil)
        
        isAnimated = false
        
       // animateAllButtons()
    }
    
    func jumboEggButtonClicked(_ button: UIButton) {
        isAnimated = true
        AnimateButton.animateButtonInside(myButton: jumboButton)
        
        largeButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        largeButton.titleLabel?.textColor = Color.mainOrangeColor
        
        extraLargeButton.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        extraLargeButton.titleLabel?.textColor = Color.mainOrangeColor
        
        jumboButton.titleLabel?.textColor = .white
        jumboButton.setBackgroundImage(Image.filledEggCategoryButtonImage, for: .normal)
        
        UIView.animate(withDuration: 1.0, delay: 0.0, usingSpringWithDamping: 0.1, initialSpringVelocity: 0.0, options: [], animations: {
            AnimateButton.animateButtonOutside(myButton: self.jumboButton)
        }, completion: nil)
        
        isAnimated = false
        
       // animateAllButtons()
    }
    
    // MARK: - Egg type buttons action
//    func softButtonCLicked(_ button: UIButton) {
//        softButton.titleLabel?.textColor = .white
//        softButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
//        
//        mediumButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        mediumButton.titleLabel?.textColor = Color.mainOrangeColor
//        
//        hardButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        hardButton.titleLabel?.textColor = Color.mainOrangeColor
//    }
//    
//    func mediumButtonCLicked(_ button: UIButton) {
//        mediumButton.titleLabel?.textColor = .white
//        mediumButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
//        
//        softButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        softButton.titleLabel?.textColor = Color.mainOrangeColor
//        
//        hardButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        hardButton.titleLabel?.textColor = Color.mainOrangeColor
//    }
//    
//    func hardButtonCLicked(_ button: UIButton) {
//        hardButton.titleLabel?.textColor = .white
//        hardButton.setBackgroundImage(Image.filledEggTypeButtonImage, for: .normal)
//        
//        mediumButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        mediumButton.titleLabel?.textColor = Color.mainOrangeColor
//        
//        softButton.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
//        softButton.titleLabel?.textColor = Color.mainOrangeColor
//    }
    
    func startButtonCLicked(_ button: UIButton) {
            logoAndHeaderAppear = true
            
            let controller = TimerViewController()
            self.present(controller, animated: true) {
                
                if self.largeButton.titleLabel?.textColor == .white && self.softButton.titleLabel?.textColor == .white {
                    seconds = 390  // done
                }
                
                if self.largeButton.titleLabel?.textColor == .white && self.mediumButton.titleLabel?.textColor == .white {
                    seconds = 420 // done
                }
                
                if self.largeButton.titleLabel?.textColor == .white && self.hardButton.titleLabel?.textColor == .white {
                    seconds = 720 // done
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


//extension EggTypeController {
    
    // MARK: - animate all buttons
  //  func animateAllButtons() {
       // moveEggSizeButtonsUp()
       // moveEggTypeButtons()
       // startButtonFadeOff()
  //  }
    
    // MARK: - egg size button first appear
  //  func sizeButtonsFirstLoad() {
//        if logoAndHeaderAppear == true && logoAndHeaderDidAnimate == false {
//            HeaderView.showHeader(in: self.view)
//            LogoView.showLogo(in: self.view)
//            UIView.animate(withDuration: 0.3, delay: 0.7, usingSpringWithDamping: 0.0, initialSpringVelocity: 0.0, options: [], animations: {
//                self.largeButton.alpha = 1.0
//                self.extraLargeButton.alpha = 1.0
//                self.jumboButton.alpha = 1.0
//            },
//                           completion: nil)
//        }
//        logoAndHeaderAppear = false
//        logoAndHeaderDidAnimate = true
  //  }
    // MARK: - animate header and logo
//    func animateHeaderAndLogo() {
//        UIView.animate(withDuration: 0.4, delay: 0.3, options: [.curveEaseInOut], animations: {
//            self.headerLabel.center.y -= 251
//            appLogo.center.y += 262
//        }, completion: nil
//        )
//    }
    
    // MARK: - Move egg size buttons up
//    func moveEggSizeButtonsUp() {
//        if sizeButtonOn == true {
//            UIView.animate(withDuration: 0.33, delay: 0.0, options: [.curveEaseInOut], animations: {
//                self.jumboButton.center.y -= 162
//                self.largeButton.center.y -= 162
//                self.extraLargeButton.center.y -= 162
//                self.sizeButtonOn = false
//            }, completion: nil
//            )
//        }
//    }
    
    // MARK: - Egg type buttons animation
//    func moveEggTypeButtons() {
//        if typeButtonOn == true {
//            UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.6, initialSpringVelocity: 0.0, options: [], animations: {
//                self.softButton.center.x += self.view.bounds.width
//                self.mediumButton.center.x -= self.view.bounds.width
//                self.hardButton.center.x += self.view.bounds.width
//            },
//                           completion: nil
//            )
//        }
//        typeButtonOn = false
//    }
    //MARK: - start button fade off
//    func startButtonFadeOff() {
//        UIView.animate(withDuration: 0.3, delay: 0.5, usingSpringWithDamping: 0.1, initialSpringVelocity: 1.0, options: [], animations: {
//            self.startButton.alpha = 1.0
//            self.infoButton.alpha = 1.0
//            self.thanksButton.alpha = 1.0
//        },
//                       completion: nil)
//    }
//}







