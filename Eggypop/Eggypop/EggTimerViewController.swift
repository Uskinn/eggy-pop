//
//  EggTimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/13/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import JSSAlertView
import AudioToolbox
import UserNotifications

private let stopTimeKey = "stopTimeKey"

class EggTimerViewController: UIViewController {
    
    let eggTimerView = EggTimerVew()
//    var secondsLeft: Bool = false
    var secondsLeft: Bool = true
    
    var timer: Timer?
    var stopTime: Date?
    let sound = Sound()
    let homeScreenViewController = HomeScreenViewController()
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.init("Raw"), object: nil)
        print("observer removed")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(eggTimerView)
        navigationItem.titleView = eggTimerView.headerLabel
        eggTimerView.layoutSubviews()
        eggTimerView.stopButton.addTarget(self, action: #selector(stopButtonCkicked), for: .touchUpInside)
        
        registerForLocalNotifications()
        
        stopTime = UserDefaults.standard.object(forKey: stopTimeKey) as? Date
        if let time = stopTime {
            if time > Date() {
                startTimer(time, includeNotification: false)
            } else {
                notifyTimerCompleted()
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("observer added")
        self.secondsLeft = true
        DispatchQueue.main.async {
            NotificationCenter.default.addObserver(self, selector: #selector(self.startButtonClicked), name: NSNotification.Name(rawValue: "Raw"), object: nil)
        }
    }
    
    func startButtonClicked() {
        let time = Date(timeIntervalSinceNow: Double(HomeScreenView.seconds))
        self.startTimer(time)
    }
    
    func startTimer(_ stopTime: Date, includeNotification: Bool = true) {
        // save `stopTime` in case app is terminated
        UserDefaults.standard.set(stopTime, forKey: stopTimeKey)
        self.stopTime = stopTime
        
        // start Timer
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(handleTimer(_:)), userInfo: nil, repeats: true)
        guard includeNotification else { return }
        
        // start local notification (so we're notified if timer expires while app is not running)
        if #available(iOS 10, *) {
            let content = UNMutableNotificationContent()
            content.title = "Eggs ready!"
            content.body = "Whoo, hoo!"
            content.sound = UNNotificationSound.init(named: "iggyPopSong")
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: stopTime.timeIntervalSinceNow, repeats: false)
            let notification = UNNotificationRequest(identifier: "timer", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(notification)
        } else {
            let notification = UILocalNotification()
            notification.fireDate = stopTime
            notification.alertBody = "Timer finished!"
            UIApplication.shared.scheduleLocalNotification(notification)
        }
    }
    
    //extension HomeScreenViewController {
    //
    //    func scheduleNotification(inSeconds seconds: TimeInterval, complition: (Bool) -> ()) {
    //        removeNotification(withId: [notifId])
    //
    //        let date = Date(timeIntervalSinceNow: seconds)
    //
    //        let content = UNMutableNotificationContent()
    //        content.title = "Hooray!"
    //        content.body = "Eggs are ready"
    //        content.sound = UNNotificationSound.init(named: "iggyPopSong")
    //
    //        let calendar = Calendar(identifier: .gregorian)
    //        let components = calendar.dateComponents([.minute, .second], from: date)
    //
    //        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: false)
    //        let request = UNNotificationRequest(identifier: notifId, content: content, trigger: trigger)
    //
    //        let center = UNUserNotificationCenter.current()
    //        center.add(request, withCompletionHandler: nil)
    //    }
    //
    //    func removeNotification(withId ids: [String]) {
    //        let center = UNUserNotificationCenter.current()
    //        center.removePendingNotificationRequests(withIdentifiers: ids)
    //    }
    //}
    //
    
    
    private func registerForLocalNotifications() {
        if #available(iOS 10, *) {
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) { granted, error in
                guard granted && error == nil else {
                    print("\(error!)")
                    return
                }
            }
        } else {
            let types: UIUserNotificationType = [.badge, .sound, .alert]
            let settings = UIUserNotificationSettings(types: types, categories: nil)
            UIApplication.shared.registerUserNotificationSettings(settings)
        }
    }
    
    func handleTimer(_ timer: Timer) {
        let now = Date()
        
        if stopTime! > now {
            eggTimerView.timerLabel.text = dateComponentsFormatter.string(from: now, to: stopTime!)
        } else if secondsLeft == true {
            print("secondLeft: \(secondsLeft)")
            stopTimer()
            notifyTimerCompleted()
            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate), nil)
            
           if onSilent == true {
                sound.eggySongOnSilentMode()
            } else {
                sound.eggySongOnRegularMode()
            }
            
            Alert.alertWithTitle(self, callback: {
                audioPlayer.stop()
                self.dismiss(animated: true, completion: nil)
            })
            secondsLeft = false
        }
    }
    
    func stopButtonCkicked() {
        stopTimer()
        self.dismiss(animated: true, completion: nil)
        eggTimerView.timerLabel.text = "0:00"
    }
    
    let dateComponentsFormatter: DateComponentsFormatter = {
        let formatter = DateComponentsFormatter()
        formatter.allowedUnits = [.minute, .second]
        formatter.unitsStyle = .positional
        formatter.zeroFormattingBehavior = .pad
        return formatter
    }()
    
    private func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
    
    private func notifyTimerCompleted() {
        eggTimerView.timerLabel.text = "0:00"
    }
}







