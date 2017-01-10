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
                                            title: "Hey",
                                            text: "Eggs are ready",
                                            buttonText: "Bon appetit!",
                                            color: UIColorFromHex(appColor.hexMainOrangeColor, alpha: 1))

        alertview.setTextTheme(.light)
        alertview.addAction(callback)
        
    }
}

//let alertController = UIAlertController(title: "title", message: "message", preferredStyle: .Alert)
////...
//var rootViewController = UIApplication.shared.keyWindow?.rootViewController
//if let navigationController = rootViewController as? UINavigationController {
//    rootViewController = navigationController.viewControllers.first
//}
//if let tabBarController = rootViewController as? UITabBarController {
//    rootViewController = tabBarController.selectedViewController
//}
//rootViewController?.present(alertController, animated: true, completion: nil)
