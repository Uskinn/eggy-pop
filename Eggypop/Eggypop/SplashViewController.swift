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
        view.addSubview(splashScreen)
        splashScreen.layoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.splashScreen.animateView()
        }
    }
}
