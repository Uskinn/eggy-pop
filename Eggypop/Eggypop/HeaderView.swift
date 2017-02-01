//
//  HeaderView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/31/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class HeaderView: UIView {
    
    func showHeader(in myView: UIView) {
        if logoAndHeaderAppear == true && logoAndHeaderDidAnimate == true {
            headerLabel.frame = CGRect(x: 118.00, y: 36.00, width: 140.00, height: 28.00)
        } else {
            headerLabel.frame = CGRect(x: 118.00, y: 286.00, width: 140.00, height: 28.00)
        }
        Label.headerLabel(headerLabel)
        myView.addSubview(headerLabel)
    }
}
