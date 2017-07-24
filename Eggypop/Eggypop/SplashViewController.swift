//
//  SplashViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import UserNotifications

class SplashViewController: UIViewController {
    
    let splashScreen = SpalshScreenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.titleView = splashScreen.headerLabel
        view.addSubview(splashScreen)
        splashScreen.layoutSubviews()
      //  self.registerForLocalNotifications()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        DispatchQueue.main.async {
            self.splashScreen.animateView()
            
        }
    }
    
//        private func registerForLocalNotifications() {
//            if #available(iOS 10, *) {
//                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
//                    guard granted && error == nil else {
//                        print("\(error!)")
//                        return
//                    }
//                }
//            } else {
//                let types: UIUserNotificationType = [.badge, .sound, .alert]
//                let settings = UIUserNotificationSettings(types: types, categories: nil)
//                UIApplication.shared.registerUserNotificationSettings(settings)
//            }
//        }

}
