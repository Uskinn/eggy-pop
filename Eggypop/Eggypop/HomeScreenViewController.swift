//
//  HomeScreenViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class HomeScreenViewController: UIViewController {
    
    let homeScreen = HomeScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(homeScreen)
        
        homeScreen.layoutSubviews()
    }
}
