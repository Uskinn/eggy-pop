//
//  ViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    @IBOutlet weak var headLabel: UILabel!
    
    @IBOutlet weak var largeEgg: UIImageView!
    @IBOutlet weak var extraLargeEgg: UIImageView!
    @IBOutlet weak var jumboEgg: UIImageView!
    
    @IBOutlet weak var largeEggLabel: UILabel!
    @IBOutlet weak var extraLargeEggLable: UILabel!
    @IBOutlet weak var jumboEggLabel: UILabel!
    
    @IBOutlet weak var softTypeLabel: UILabel!
    @IBOutlet weak var mediumTypeLabel: UILabel!
    @IBOutlet weak var hardTypeLabel: UILabel!
    
    @IBOutlet weak var setTimerButton: UIButton!
    
    @IBOutlet weak var logoImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red:0.03, green:0.48, blue:0.43, alpha:1.0)
        self.headLabel.textColor = UIColor(red:0.93, green:0.49, blue:0.45, alpha:1.0)
       
        largeEgg.image = largeEgg.image!.withRenderingMode(UIImageRenderingMode.alwaysTemplate)
        largeEgg.tintColor = UIColor(red:0.93, green:0.49, blue:0.45, alpha:1.0)
        
        // setting colors for eggs type
        self.largeEggLabel.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        self.extraLargeEggLable.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        self.jumboEggLabel.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        
        // making corner radius
        
        self.softTypeLabel.backgroundColor = UIColor(red:0.93, green:0.49, blue:0.45, alpha:1.0)
        self.softTypeLabel.layer.masksToBounds = true
        self.softTypeLabel.layer.cornerRadius = 25
        
        self.mediumTypeLabel.backgroundColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1.0)
        self.mediumTypeLabel.layer.masksToBounds = true
        self.mediumTypeLabel.layer.cornerRadius = 25
        
        self.hardTypeLabel.backgroundColor = UIColor(red:0.61, green:0.61, blue:0.61, alpha:1.0)
        self.hardTypeLabel.layer.masksToBounds = true
        self.hardTypeLabel.layer.cornerRadius = 25
        
        // setting color for the text inside the eggtype labels
        
        self.softTypeLabel.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        self.mediumTypeLabel.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        self.hardTypeLabel.textColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)

    // working with button style
        
        self.setTimerButton.setTitleColor(UIColor(red:0.93, green:0.49, blue:0.45, alpha:1.0), for: .normal)
        self.setTimerButton.backgroundColor = UIColor(red:0.75, green:0.93, blue:0.88, alpha:1.0)
        
        self.setTimerButton.layer.masksToBounds = true
        self.setTimerButton.layer.cornerRadius = 20
    
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func setTimerPressed(_ sender: Any) {
    }


}

