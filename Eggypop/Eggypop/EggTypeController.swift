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
        
        view.backgroundColor = .white
        
        let largeButton = UIButton(type: .custom)
        let shapeColor = EggShapeColor()
        
        
        largeButton.frame = CGRect(x: 17.00, y: 265.00, width: 100.00, height: 138.00)
        
        let eggShapeButton = UIImage(named: "eggShape")
        
        largeButton.setTitle("large", for: .normal)
        largeButton.setTitleColor(shapeColor.emptyEggShape, for: .normal)
        largeButton.setImage(eggShapeButton, for: .normal)
   
        view.addSubview(largeButton)
        
    }
}

