//
//  LogoView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/31/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class LogoView {
    
   class func showLogo(in myView: UIView) {
        if logoAndHeaderAppear == true && logoAndHeaderDidAnimate == true {
            appLogo.frame = CGRect(x: 171.00, y: 596.00, width: 32.00, height: 43.5)
        } else {
            appLogo.frame = CGRect(x: 171.00, y: 320.00, width: 32.00, height: 43.5)
        }
        Logo.logo(appLogo)
        myView.addSubview(appLogo)
    }
}
