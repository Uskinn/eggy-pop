//
//  TimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/4/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        header()
        logo()

        // Do any additional setup after loading the view.
    }
    
    func header() {
        // label programmatically
        let headerLabel = UILabel()
        headerLabel.frame = CGRect(x: 118.00, y: 36.00, width: 140.00, height: 23.00)
        headerLabel.text = "eggypop"
        headerLabel.textColor = appColor.headerColor
        headerLabel.font = UIFont(name: "LucidaGrande", size: 0)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: headerLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        headerLabel.attributedText = attributedString
        
        self.view.addSubview(headerLabel)
    }

    func logo() {
        let logoImage = UIImage(named: "logoIggy")
        let appLogo = UIImageView()
        
        appLogo.image = logoImage
        appLogo.frame = CGRect(x: 171.00, y: 596.00, width: 36.00, height: 44.00)
        
        self.view.addSubview(appLogo)
    }

    
    }
