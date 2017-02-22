//
//  Constraints.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/21/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class Constraints {
    
    class func setupConstraintsIn(myView: UIView,for subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: myView.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: myView.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
}
