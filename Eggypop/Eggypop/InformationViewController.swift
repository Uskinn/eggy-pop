//
//  InformationViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/17/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class InformationViewController: UIViewController {
    
    let informationView = InformationScreenView()
    var dismissButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.orange.withAlphaComponent(0.4)
        view.isOpaque = false
        view.addSubview(informationView)
    
    informationView.layoutSubviews()
    
        dismissButton = UIButton(type: .custom)
        
        dismissButton.addTarget(self, action: #selector(dismisView), for: .touchUpInside)
        
        dismissButton.backgroundColor = .clear
        dismissButton.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(dismissButton, belowSubview: informationView.timerLabel)
        
            dismissButton.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            dismissButton.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
            dismissButton.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
            dismissButton.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
 
    }
    
    func dismisView() {
        dismiss(animated: true, completion: nil)
    }
}
