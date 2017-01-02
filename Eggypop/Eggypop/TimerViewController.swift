//
//  TimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 11/28/16.
//  Copyright © 2016 Sergey Nevzorov. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(red:0.03, green:0.48, blue:0.43, alpha:1.0)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func dismissButtonTapped(_ sender: Any) {
        
        self.dismiss(animated: true, completion: {})
    }
    
}
