//
//  Button+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setupLargeButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(appColor.mainOrangeColor, for: .normal)
        self.setTitle("large", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding spacing between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupExtraLargeButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(appColor.mainOrangeColor, for: .normal)
        // adding two lines of text
        self.titleLabel!.lineBreakMode = .byWordWrapping
        self.titleLabel!.textAlignment = .center
        self.setTitle("extra\nlarge", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding spacing between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupJumboButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(appColor.mainOrangeColor, for: .normal)
        self.setTitle("jumbo", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding spacing between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
}
