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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        view.isOpaque = false
        view.addSubview(informationView)
        informationView.layoutSubviews()
        informationView.dismissScrollViewButton.addTarget(self, action: #selector(dismisView), for: .touchUpInside)
    }
    
    func dismisView() {
        dismiss(animated: true, completion: nil)
    }
}
