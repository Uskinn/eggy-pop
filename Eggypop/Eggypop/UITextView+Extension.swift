//
//  UITextView+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/25/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UITextView {
    
    func setupThanksTextView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 8
        self.text = "Sorry for the late reply, but this may help someone. According to Apple's Text Programming Guide for iOS, UILabel defines a label, which displays a static text string. UITextField defines a text field, which displays a single line of editable text. UITextView defines a text view, which displays multiple lines of editable text. Although these classes actually can support the display of arbitrary amounts of text, labels and text fields are intended to be used for relatively small amounts of text, typically a single line. Text views, on the other hand, are meant to display large amounts of text. For more information please check: Text Programminde for iOS"
        self.textAlignment = .justified
        
        self.font = UIFont.init(name: "TeluguSangamMN-Bold", size: 16)
        
        
        self.contentMode = .scaleAspectFit
        

    }
}
