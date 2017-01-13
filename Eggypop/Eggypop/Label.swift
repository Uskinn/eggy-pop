//
//  Header.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/7/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class Label {
    
    class func headerLabel(_ myLabel: UILabel) {
        // label programmatically
        myLabel.frame = CGRect(x: 118.00, y: 36.00, width: 140.00, height: 23.00)
        myLabel.text = "eggypop"
        myLabel.textColor = appColor.headerColor
        myLabel.font = UIFont(name: "LucidaGrande", size: 0)
        myLabel.font = UIFont.boldSystemFont(ofSize: 20)
        myLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: myLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        myLabel.attributedText = attributedString
    }
    
    class func timerLabel(_ myLabel: UILabel) {
        // label programmatically
        myLabel.frame = CGRect(x: 13.05, y: 94.00, width: 348.00, height: 168.00)
        myLabel.backgroundColor = appColor.mainOrangeColor
        
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 8
        
        myLabel.text = "00:00"
        myLabel.textColor = .white
        myLabel.font = UIFont(name: "LucidaGrande", size: 0)
        myLabel.font = UIFont.systemFont(ofSize: 112)
        myLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: myLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        myLabel.attributedText = attributedString
    }
        
    class func eggySaisWarning(_ myLogo: UIImageView) {
        myLogo.image = appImage.eggySaisImage
        myLogo.frame = CGRect(x: 57.00, y: 516.00, width: 108.00, height: 99.00)
    }
    
    class func softSaisWarning(_ myLogo: UIImageView) {
        myLogo.image = appImage.softSaisImage
        myLogo.frame = CGRect(x: 230.00, y: 255.00, width: 130.00, height: 52.00)
    }
    
    class func mediumSaisWarning(_ myLogo: UIImageView) {
        myLogo.image = appImage.mediumSaisImage
        myLogo.frame = CGRect(x: 15.00, y: 281.00, width: 99.00, height: 73.00)
    }
    
    class func hardSaisWarning(_ myLogo: UIImageView) {
        myLogo.image = appImage.hardSaisImage
        myLogo.frame = CGRect(x: 218.00, y: 432.00, width: 142.00, height: 77.00)
    }
}























