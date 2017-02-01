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
        myLabel.text = "eggypop"
        myLabel.textColor = appColor.headerColor
        myLabel.font = UIFont(name: "LucidaGrande", size: 0)
        myLabel.font = UIFont.boldSystemFont(ofSize: 25)
        myLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: myLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        myLabel.attributedText = attributedString
    }
    
    class func timerLabel(_ myLabel: UILabel) {
        // label programmatically
        myLabel.frame = CGRect(x: 13.05, y: 94.00, width: 348.00, height: 168.00)
        myLabel.backgroundColor = UIColor(red:0.99, green:0.91, blue:0.77, alpha:1.0)
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = 8
        
        myLabel.text = "00:00"
        myLabel.textColor = appColor.mainOrangeColor

        myLabel.font = UIFont(name: "LucidaGrande", size: 0)
        myLabel.font = UIFont.systemFont(ofSize: 112)
        myLabel.textAlignment = NSTextAlignment.center
        
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: myLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        myLabel.attributedText = attributedString
    }
}























