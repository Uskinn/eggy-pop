//
//  Logo.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/7/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class Logo {
    
    func logo(_ myLogo: UIImageView) {
        myLogo.image = appImage.logoImage
        myLogo.frame = CGRect(x: 171.00, y: 596.00, width: 36.00, height: 44.00)
    }
}
