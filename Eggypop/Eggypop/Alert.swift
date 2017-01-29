//
//  Alert.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/9/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import JSSAlertView

class Alert: JSSAlertView {
    
    class func alertWithTitle(_ controller: UIViewController, callback: @escaping () -> Void) {
        let alertview = JSSAlertView().show(controller,
                                            title: "Hooray!",
                                            text: "Your eggs are ready to eat.",
                                            buttonText: "Got it, thanks Eggypop!",
                                            color: UIColorFromHex(appColor.hexMainOrangeColor, alpha: 1))
        alertview.setTextTheme(.light)
        alertview.addAction(callback)
    }
}
