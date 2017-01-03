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

let appColor = Colors()
let eggShapeButton = UIImage(named: "emptyEggShape")
let filledEggButton = UIImage(named: "filledEggShape")

var isFilled: Bool = false

class EggTypeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        largeButtonFunc()
        extraLargeButtonFunc()
        jumboButtonFunc()
        
        header()
        logo()
        
        // largeButton.addTarget(self, action: #selector(largeButtonCLicked(_:)), for: .touchUpInside)
        
        
    }
    
    func largeButtonFunc() {
        largeButton.frame = CGRect(x: 17.00, y: 265.00, width: 100.00, height: 138.00)
        largeButton.setTitle("large", for: .normal)
        
        largeButton.setBackgroundImage(eggShapeButton, for: .normal)
        
        largeButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        largeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 17)
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
        extraLargeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 17)
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
        jumboButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 17)
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
        headerLabel.textColor = UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)
        headerLabel.font = UIFont(name: "Lucida Grande", size: 20)
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
        appLogo.frame = CGRect(x: 168.00, y: 596.00, width: 38.00, height: 51.00)
        
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
    }
}













