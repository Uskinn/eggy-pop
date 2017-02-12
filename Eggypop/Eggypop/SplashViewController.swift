//
//  SplashViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    let splashScreen = SpalshScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(splashScreen)
        self.splashScreen.layoutSubviews()
        self.splashScreen.animateView()
    }
}
