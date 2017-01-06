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

let appColor = Color()

let eggShapeButton = UIImage(named: "emptyEggShape")
let filledEggButton = UIImage(named: "filledEggShape")
let emptyEggTypeButtonImage = UIImage(named: "emptyTypeButton")
let filledEggTypeButtonImage = UIImage(named: "filledTypeButton")
let startButtonImage = UIImage(named: "startButton")

var isFilled: Bool = false
var cotegoryButtonOn: Bool = true
var typeButtonOn: Bool = true
var startButtonON: Bool = true

class EggTypeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        largeButtonFunc()
        extraLargeButtonFunc()
        jumboButtonFunc()
        
        softEggType()
        mediumEggType()
        hardEggType()
        
        header()
        logo()
        
        startButtonFunc()
        
        softButton.center.x -= self.view.bounds.width
        mediumButton.center.x += self.view.bounds.width
        hardButton.center.x -= self.view.bounds.width
        startButton.alpha = 0.0
        
        // largeButton.addTarget(self, action: #selector(largeButtonCLicked(_:)), for: .touchUpInside)
        
        
    }
    
    func largeButtonFunc() {
        largeButton.frame = CGRect(x: 17.00, y: 265.00, width: 100.00, height: 138.00)
        largeButton.setTitle("large", for: .normal)
        
        largeButton.setBackgroundImage(eggShapeButton, for: .normal)
        
        largeButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        largeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        largeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        
        // adding spacing between characters
        let title = largeButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        largeButton.setAttributedTitle(attributedTitle, for: .normal)
        
        largeButton.addTarget(self, action: #selector(largeButtonCLicked(_:)), for: .touchUpInside)
        
        view.addSubview(largeButton)
    }
    
    func extraLargeButtonFunc() {
        extraLargeButton.frame = CGRect(x: 138.00, y: 265.00, width: 100.00, height: 138.00)
        extraLargeButton.setBackgroundImage(eggShapeButton, for: .normal)
        
        // adding two lines of text
        extraLargeButton.titleLabel!.lineBreakMode = .byWordWrapping
        extraLargeButton.titleLabel!.textAlignment = .center
        extraLargeButton.setTitle("extra\nlarge", for: .normal)
        
        extraLargeButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        extraLargeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        extraLargeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        
        // adding spacing between characters
        let title = extraLargeButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        extraLargeButton.setAttributedTitle(attributedTitle, for: .normal)
        
        extraLargeButton.addTarget(self, action: #selector(extraLargeButtonClicked(_:)), for: .touchUpInside)
        
        view.addSubview(extraLargeButton)
    }
    
    func jumboButtonFunc() {
        jumboButton.frame = CGRect(x: 258.00, y: 265.00, width: 100.00, height: 138.00)
        jumboButton.setBackgroundImage(eggShapeButton, for: .normal)
        jumboButton.setTitle("jumbo", for: .normal)
        jumboButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        jumboButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        jumboButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        jumboButton.titleLabel?.textAlignment = .center
        
        // adding spacing between characters
        let title = jumboButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        jumboButton.setAttributedTitle(attributedTitle, for: .normal)
        
        jumboButton.addTarget(self, action: #selector(jumboButtonClicked(_:)), for: .touchUpInside)
        
        view.addSubview(jumboButton)
    }
    
    func header() {
        // label programmatically
        let headerLabel = UILabel()
        headerLabel.frame = CGRect(x: 118.00, y: 36.00, width: 140.00, height: 23.00)
        headerLabel.text = "eggypop"
        headerLabel.textColor = appColor.headerColor
        headerLabel.font = UIFont(name: "LucidaGrande", size: 0)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: headerLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        headerLabel.attributedText = attributedString
        
        self.view.addSubview(headerLabel)
    }
    
    func logo() {
        let logoImage = UIImage(named: "logoIggy")
        let appLogo = UIImageView()
        
        appLogo.image = logoImage
        appLogo.frame = CGRect(x: 171.00, y: 596.00, width: 36.00, height: 44.00)
        
        self.view.addSubview(appLogo)
    }
    
    func largeButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            largeButton.titleLabel?.textColor = .white
            largeButton.setBackgroundImage(filledEggButton, for: .normal)
            
            extraLargeButton.setBackgroundImage(eggShapeButton, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(eggShapeButton, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        moveEggCotegoryButtons()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func extraLargeButtonClicked(_ button: UIButton) {
        if isFilled == false {
            extraLargeButton.titleLabel?.textColor = .white
            extraLargeButton.setBackgroundImage(filledEggButton, for: .normal)
            
            largeButton.setBackgroundImage(eggShapeButton, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            jumboButton.setBackgroundImage(eggShapeButton, for: .normal)
            jumboButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        
        moveEggCotegoryButtons()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    func jumboButtonClicked(_ button: UIButton) {
        if isFilled == false {
            jumboButton.titleLabel?.textColor = .white
            jumboButton.setBackgroundImage(filledEggButton, for: .normal)
            
            largeButton.setBackgroundImage(eggShapeButton, for: .normal)
            largeButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            extraLargeButton.setBackgroundImage(eggShapeButton, for: .normal)
            extraLargeButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
        moveEggCotegoryButtons()
        moveEggTypeButtons()
        startButtonFade()
    }
    
    // MARK: animating buttons
    // moving three eggSize buttons up
    func moveEggCotegoryButtons() {
        if cotegoryButtonOn == true {
            UIView.animate(withDuration: 0.4) {
                jumboButton.center.y -= 171
                largeButton.center.y -= 171
                extraLargeButton.center.y -= 171
                
                //print(jumboButton.frame)
                
                cotegoryButtonOn = false
            }
        }
    }
    
    // MARK: creating the eggType buttons
    
    func softEggType () {
        softButton.frame = CGRect(x: 17.00, y: 267.00, width: 341.00, height: 55.00)
        softButton.setTitle("soft", for: .normal)
        
        softButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
        
        softButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        softButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 36)
        softButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        
        let title = softButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 2.0])
        softButton.setAttributedTitle(attributedTitle, for: .normal)
        
        softButton.addTarget(self, action: #selector(softButtonCLicked(_:)), for: .touchUpInside)
        
        view.addSubview(softButton)
    }
    
    func mediumEggType() {
        mediumButton.frame = CGRect(x: 17.00, y: 329.00, width: 341.00, height: 55.00)
        mediumButton.setTitle("medium", for: .normal)
        
        mediumButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
        
        mediumButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        mediumButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        mediumButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        
        let title = mediumButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 2.0])
        mediumButton.setAttributedTitle(attributedTitle, for: .normal)
        
        mediumButton.addTarget(self, action: #selector(mediumButtonCLicked(_:)), for: .touchUpInside)
        
        view.addSubview(mediumButton)
    }
    
    func hardEggType() {
        hardButton.frame = CGRect(x: 17.00, y: 391.00, width: 341.00, height: 55.00)
        hardButton.setTitle("hard", for: .normal)
        
        hardButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
        
        hardButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        hardButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        hardButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        
        let title = hardButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 2.0])
        hardButton.setAttributedTitle(attributedTitle, for: .normal)
        
        hardButton.addTarget(self, action: #selector(hardButtonCLicked(_:)), for: .touchUpInside)
        
        view.addSubview(hardButton)
    }
    
    func softButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            softButton.titleLabel?.textColor = .white
            softButton.setBackgroundImage(filledEggTypeButtonImage, for: .normal)
            
            mediumButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            hardButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            hardButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
    }
    
    func mediumButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            mediumButton.titleLabel?.textColor = .white
            mediumButton.setBackgroundImage(filledEggTypeButtonImage, for: .normal)
            
            softButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            softButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            hardButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            hardButton.titleLabel?.textColor = appColor.mainOrangeColor
        }
    }
    
    func hardButtonCLicked(_ button: UIButton) {
        if isFilled == false {
            hardButton.titleLabel?.textColor = .white
            hardButton.setBackgroundImage(filledEggTypeButtonImage, for: .normal)
            
            mediumButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            mediumButton.titleLabel?.textColor = appColor.mainOrangeColor
            
            softButton.setBackgroundImage(emptyEggTypeButtonImage, for: .normal)
            softButton.titleLabel?.textColor = appColor.mainOrangeColor
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
        startButton.frame = CGRect(x: 138.00, y: 481.00, width: 100.00, height: 100.00)
        startButton.setTitle("start", for: .normal)
        
        startButton.setBackgroundImage(startButtonImage, for: .normal)
        
        startButton.setTitleColor(.white, for: .normal)
        startButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        startButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        
        // adding spacing between characters
        let title = startButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        startButton.setAttributedTitle(attributedTitle, for: .normal)
        
        startButton.addTarget(self, action: #selector(startButtonCLicked(_:)), for: .touchUpInside)
        
        view.addSubview(startButton)
    }
    
    func startButtonFade() {
        UIView.animate(withDuration: 0.5, delay: 0.8, options: [],
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
        
    
        
        seconds = 120
    }
}













