//
//  Button.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/2/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class Button {
    
   class func eggCategoryButton(_ myButton: UIButton) {
        myButton.setBackgroundImage(appImage.emptyEggCategoryButtonImage, for: .normal)
        myButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "Lucida Grande", size: 17)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)

        // adding spacing between characters
        let title = myButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        myButton.setAttributedTitle(attributedTitle, for: .normal)
    }
    
   class func eggTypeButton(_ myButton: UIButton) {
        myButton.setBackgroundImage(appImage.emptyEggTypeButtonImage, for: .normal)
        myButton.setTitleColor(appColor.mainOrangeColor, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "Lucida Grande", size: 0)
        myButton.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        
        // adding spacing between characters
        let title = myButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 2.0])
        myButton.setAttributedTitle(attributedTitle, for: .normal)
    }

   class func startButton(_ myButton: UIButton) {
        myButton.frame = CGRect(x: 25.00, y: 469.00, width: 321.00, height: 72.00)
        myButton.setTitle("start", for: .normal)
        
        myButton.setBackgroundImage(appImage.startButtonImage, for: .normal)
        
        myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        
        // adding spacing between characters
        let title = myButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        myButton.setAttributedTitle(attributedTitle, for: .normal)
    }
  
    class func stopButton(_ myButton: UIButton) {
        myButton.frame = CGRect(x: 25.00, y: 469.00, width: 321.00, height: 72.00)
        myButton.setTitle("stop", for: .normal)
        
        myButton.setBackgroundImage(appImage.stopButtonImage, for: .normal)
        
        myButton.setTitleColor(.white, for: .normal)
        myButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        myButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        
        // adding spacing between characters
        let title = myButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        myButton.setAttributedTitle(attributedTitle, for: .normal)
    }
}
