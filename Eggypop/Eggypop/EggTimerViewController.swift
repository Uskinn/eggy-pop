//
//  EggTimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/13/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class EggTimerViewController: UIViewController {
    
    let eggTimerView = EggTimerVew()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(eggTimerView)
        eggTimerView.layoutSubviews()
        
    }
    
    
}
