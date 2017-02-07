//
//  Button.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/2/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class Button {
    
//    class func eggCategoryButton(_ myButton: UIButton) {
//        myButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
//        myButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
//        myButton.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
//        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
//        
//        // adding spacing between characters
//        let title = myButton.title(for: .normal)
//        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
//        myButton.setAttributedTitle(attributedTitle, for: .normal)
//    }
    
    class func eggTypeButton(_ myButton: UIButton) {
        myButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        myButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        // adding spacing between characters
        let title = myButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        myButton.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    }

final class EggButton {
    
    static func eggSizeButton(_ button: UIButton) {
        button.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        button.setTitleColor(appColor.mainOrangeColor, for: .normal)
        //button.setTitle("", for: .normal)
        button.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
    
        print("adding spasing")
       //  adding spacing between characters
//        let title = button.title(for: .normal)
//        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
//        button.setAttributedTitle(attributedTitle, for: .normal)
    
    }

    
    static func createButton(with type: EggButtonType) -> UIButton {
        let button = UIButton(type: .custom)
        
        switch type {
        case .information:
            button.frame = CGRect(x: 22.00, y: 40.00, width: 23.00, height: 23.00)
            button.setBackgroundImage(appImage.infoButtonImage, for: .normal)
        case .thankYou:
            button.frame = CGRect(x: 322.00, y: 40.00, width: 23.00, height: 23.00)
            button.setBackgroundImage(appImage.thanksButtonImage, for: .normal)
        case .stop:
            setupStopButton(button)
        case .start:
            startButton(button)
        case .eggSize:
            eggSizeButton(button)
        }
        return button
    }
    
    static func startButton(_ button: UIButton) {
        button.frame = CGRect(x: 25.00, y: 469.00, width: 321.00, height: 72.00)
        button.setTitle("start", for: .normal)
        
        button.setBackgroundImage(appImage.startButtonImage, for: .normal)
        
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        
        // adding spacing between characters
        let title = button.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        button.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    static func setupStopButton(_ button: UIButton) {
        button.frame = CGRect(x: 25.00, y: 469.00, width: 321.00, height: 72.00)
        button.setTitle("stop", for: .normal)
        
        button.setBackgroundImage(appImage.stopButtonImage, for: .normal)
        
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        
        // adding spacing between characters
        let title = button.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        button.setAttributedTitle(attributedTitle, for: .normal)
    }
}

enum EggButtonType {
    case information
    case thankYou
    case stop
    case start
    case eggSize
}


