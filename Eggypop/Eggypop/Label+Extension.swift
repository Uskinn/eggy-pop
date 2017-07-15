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
        self.text = "0:00"
        self.textColor = Color.mainOrangeColor
        self.font = UIFont(name: "LucidaGrande", size: 0)
        self.font = UIFont.systemFont(ofSize: 120)
        self.textAlignment = .left
        
        // add space between characters
        let attributedString = NSMutableAttributedString(string: self.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        self.attributedText = attributedString
    }
}

















