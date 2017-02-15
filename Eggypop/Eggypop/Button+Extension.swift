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
        self.addSpaceForChar(space: 1.7)
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
        self.addSpaceForChar(space: 1.7)
        self.titleLabel?.alpha = 0
    }
    
    func setupJumboButton() {
        self.setBackgroundImage(Image.emptyEggCategoryButtonImage, for: .normal)
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("jumbo", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        self.addSpaceForChar(space: 1.7)
        self.titleLabel?.alpha = 0
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
        self.addSpaceForChar(space: 1.7)
    }
    
    func setupMediumEggButton() {
        self.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("medium", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.addSpaceForChar(space: 1.7)
    }

    func setupHardEggButton() {
        self.setBackgroundImage(Image.emptyEggTypeButtonImage, for: .normal)
        self.setTitleColor(Color.mainOrangeColor, for: .normal)
        self.setTitle("hard", for: .normal)
        self.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        self.addSpaceForChar(space: 1.7)
    }
    
    func setupStartButton() {
        self.setBackgroundImage(Image.startButtonImage, for: .normal)
        self.setTitle("start", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        self.addSpaceForChar(space: 1.0)
        self.alpha = 0
    }
    
     func setupStopButton() {
        self.setBackgroundImage(Image.stopButtonImage, for: .normal)
        self.setTitle("stop", for: .normal)
        self.setTitleColor(.white, for: .normal)
        self.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        self.titleLabel?.font = UIFont.boldSystemFont(ofSize: 32)
        self.addSpaceForChar(space: 1.0)
    }
    
    // add space between characters
    func addSpaceForChar(space: CGFloat) {
        let title = self.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: space])
        self.setAttributedTitle(attributedTitle, for: .normal)
    }
}









