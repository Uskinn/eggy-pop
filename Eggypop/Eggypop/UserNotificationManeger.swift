//
//  UserNotificationManeger.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import UserNotifications

class UserNotificationManager {
    
    static let shared = UserNotificationManager()
    
    func registerNotification() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { (granted, error) in
            print("error registerNotification")
        }
    }
    
    func addNotificationWithTime(_ myTimeInterval: Int) {
        let content = UNMutableNotificationContent()
        content.title = "Alarm"
        content.body = "Your eggs are ready!"
        content.sound = UNNotificationSound(named: "iggyPopSong")
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: TimeInterval(myTimeInterval), repeats: false)
        
        let request = UNNotificationRequest(identifier: "timeInterval", content: content, trigger: trigger)
        
        UNUserNotificationCenter.current().add(request) { (error) in
            print("error addRequest")
        }
    }
}
