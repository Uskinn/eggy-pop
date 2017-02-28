//
//  ThanksViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ThanksViewController: UIViewController {

    let thanksView = ThanksScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white.withAlphaComponent(0.4)
        view.isOpaque = false
        view.addSubview(thanksView)
        thanksView.layoutSubviews()
        thanksView.dismissScrollViewButton.addTarget(self, action: #selector(dismissView), for: .touchUpInside)
    }
    
    func dismissView() {
        dismiss(animated: true, completion: nil)
    }
}

