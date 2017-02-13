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
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("large", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupExtraLargeButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        // adding two lines of text
        self.titleLabel!.lineBreakMode = .byWordWrapping
        self.titleLabel!.textAlignment = .center
        self.setTitle("extra\nlarge", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupJumboButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("jumbo", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.titleLabel?.alpha = 0
        
        //adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupInformationButton() {
        self.setBackgroundImage(Image.infoButtonImage, for: .normal)
        self.alpha = 0
    }
    
    func setupThankYouButton() {
        self.setBackgroundImage(Image.thanksButtonImage, for: .normal)
        self.alpha = 0
    }
    
    func setupSoftEggButton() {
        self.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("soft", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        // adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupMediumEggButton() {
        self.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("medium", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        // adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }

    func setupHardEggButton() {
        self.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("hard", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        
        // adding space between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
    
    func setupStartButton() {
        self.setBackgroundImage(Image.startButtonImage, for: .normal)
        
        self.setTitle("start", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        
        // adding spacing between characters
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        self.setAttributedTitle(attributedTitle, for: .normal)
        
        self.alpha = 0
    }
}









