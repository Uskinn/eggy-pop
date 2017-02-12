//
//  Label+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/7/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

//final class Label {
//    
////    static func headerLabel(_ myLabel: UILabel) {
////        myLabel.setupHeaderLabel()
////    }
// }

extension UILabel {
    
    func setupHeaderLabel() {
        self.text = "eggypop"
        self.textColor = appColor.headerColor
        self.font = UIFont(name: "LucidaGrande", size: 0)
        self.font = UIFont.boldSystemFont(ofSize: 25)
        self.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
    
    func setupTimer() {
        self.frame = CGRect(x: 13.05, y: 94.00, width: 348.00, height: 168.00)
        self.backgroundColor = UIColor(red:0.99, green:0.91, blue:0.77, alpha:1.0)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
        
        self.text = "00:00"
        self.textColor = appColor.mainOrangeColor
        
        self.font = UIFont(name: "LucidaGrande", size: 0)
        self.font = UIFont.systemFont(ofSize: 112)
        self.textAlignment = NSTextAlignment.center
        
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}



















