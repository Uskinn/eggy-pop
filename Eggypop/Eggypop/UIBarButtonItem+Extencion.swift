//
//  UIBarButtonItem+Extencion.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/17/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    
    func setupInformationButton() {
       // self.setBackgroundImage(Image.infoButtonImage, for: .normal)
        //self.alpha = 0
        
        self.setBackgroundImage(Image.infoButtonImage, for: .normal, barMetrics: .compact)
       // self.isEnabled
    }
}

