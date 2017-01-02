//
//  ViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

class EggTypeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        largeButton()
        extraLargeButton()
        jumbo()
        
        header()
        
        view.backgroundColor = .white
    }
    
    func largeButton() {
        let largeButton = UIButton(type: .custom)
        largeButton.frame = CGRect(x: 17.00, y: 265.00, width: 100.00, height: 138.00)
        let eggShapeColor = Colors()
        let eggShapeButton = UIImage(named: "emptyEggShape")
        
        largeButton.setBackgroundImage(eggShapeButton, for: .normal)
        largeButton.setTitle("large", for: .normal)
        largeButton.setTitleColor(eggShapeColor.emptyEggShapeColor, for: .normal)
        largeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 18)
        largeButton.titleLabel?.textAlignment = .center
        
        // adding spacing between characters
        let title = largeButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        largeButton.setAttributedTitle(attributedTitle, for: .normal)
        
        view.addSubview(largeButton)
    }
    
    func extraLargeButton() {
        let largeButton = UIButton(type: .custom)
        largeButton.frame = CGRect(x: 138.00, y: 265.00, width: 100.00, height: 138.00)
        let eggShapeColor = Colors()
        let eggShapeButton = UIImage(named: "emptyEggShape")
        
        largeButton.setBackgroundImage(eggShapeButton, for: .normal)
        
        // adding two lines of text
        largeButton.titleLabel!.lineBreakMode = .byWordWrapping
        largeButton.titleLabel!.textAlignment = .center
        largeButton.setTitle("extra\nlarge", for: .normal)
        
        largeButton.setTitleColor(eggShapeColor.emptyEggShapeColor, for: .normal)
        largeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 18)
        
        // adding spacing between characters
        let title = largeButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        largeButton.setAttributedTitle(attributedTitle, for: .normal)
        
        view.addSubview(largeButton)
    }
    
    func jumbo() {
        let largeButton = UIButton(type: .custom)
        largeButton.frame = CGRect(x: 258.00, y: 265.00, width: 100.00, height: 138.00)
        let eggShapeColor = Colors()
        let eggShapeButton = UIImage(named: "emptyEggShape")
        
        largeButton.setBackgroundImage(eggShapeButton, for: .normal)
        largeButton.setTitle("jumbo", for: .normal)
        largeButton.setTitleColor(eggShapeColor.emptyEggShapeColor, for: .normal)
        largeButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 18)
        largeButton.titleLabel?.textAlignment = .center
        
        // adding spacing between characters
        let title = largeButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.7])
        largeButton.setAttributedTitle(attributedTitle, for: .normal)
        
        view.addSubview(largeButton)
    }
    
    func header() {
        // label programmatically
        let headerLabel = UILabel()
        headerLabel.frame = CGRect(x: 118.00, y: 70.00, width: 140.00, height: 23.00)
        headerLabel.text = "eggypop"
        headerLabel.textColor = UIColor(red:1.00, green:0.34, blue:0.13, alpha:1.0)
        headerLabel.font = UIFont(name: "Lucida Grande", size: 20)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: headerLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        headerLabel.attributedText = attributedString
        
        self.view.addSubview(headerLabel)
    }
    
}













