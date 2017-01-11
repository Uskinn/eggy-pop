//
//  AnimateButton.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/10/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class AnimateButton {
    class func animateButtonOutside(myButton: UIButton) {
        myButton.bounds.size.width += 8
        myButton.bounds.size.height += 8
    }

    class func animateButtonInside(myButton: UIButton) {
        myButton.bounds.size.width -= 8
        myButton.bounds.size.height -= 8
    }
}
