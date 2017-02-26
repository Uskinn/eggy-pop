//
//  Label+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/7/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UILabel {
    
    func setupHeaderLabel() {
        let attributes = [NSFontAttributeName: UIFont(name: "TeluguSangamMN-Bold", size: 25)!, NSForegroundColorAttributeName: Color.headerColor, NSKernAttributeName : 2.5] as [String : Any]
        self.attributedText = NSAttributedString(string: "eggypop", attributes: attributes)
        self.sizeToFit()
    }
    
    func setupTimer() {
        self.backgroundColor = UIColor(red:0.99, green:0.91, blue:0.77, alpha:1.0)
        self.layer.masksToBounds = true
        self.layer.cornerRadius = 8
        
        self.text = "00:00"
        self.textColor = Color.mainOrangeColor
        
        self.font = UIFont(name: "LucidaGrande", size: 0)
        self.font = UIFont.systemFont(ofSize: 110)
        self.textAlignment = NSTextAlignment.center
        
        // add space between characters
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
    
    func setupThanksLabel() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 8
        self.text = "Sorry for the late reply, but this may help someone. According to Apple's Text Programming Guide for iOS, UILabel defines a label, which displays a static text string. UITextField defines a text field, which displays a single line of editable text. UITextView defines a text view, which displays multiple lines of editable text. Although these classes actually can support the display of arbitrary amounts of text, labels and text fields are intended to be used for relatively small amounts of text, typically a single line. Text views, on the other hand, are meant to display large amounts of text. For more information please check: Text Programminde for iOS"
        self.textAlignment = .justified
        self.lineBreakMode = .byClipping
        self.numberOfLines = 0
        self.font = UIFont.init(name: "TeluguSangamMN-Bold", size: 16)
        
        
        self.contentMode = .scaleAspectFit
        
    }
}

















