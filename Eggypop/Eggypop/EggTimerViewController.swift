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

class EggTimerViewController: UIViewController {
    private let shortSongForNotif = "ThePassenger21.m4a"
    private let stopTimeKey = "stopTimeKey"
    private let timerId = "timerId"
    let eggTimerView = EggTimerVew()
    var secondsLeft: Bool = false
    var timer: Timer?
    var stopTime: Date?
    let sound = Sound()
    let homeScreenViewController = HomeScreenViewController()
    let informationVC = InformationViewController()
    
    deinit {
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.init("Raw"), object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(eggTimerView)
        navigationItem.titleView = eggTimerView.headerLabel
        eggTimerView.layoutSubviews()
        eggTimerView.stopButton.addTarget(self, action: #selector(stopButtonCkicked), for: .touchUpInside)
        stopTime = UserDefaults.standard.object(forKey: stopTimeKey) as? Date
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.secondsLeft = true
        DispatchQueue.main.async {
            NotificationCenter.default.addObserver(self, selector: #selector(self.startButtonClicked), name: NSNotification.Name(rawValue: "Raw"), object: nil)
            print("on silent ----\(self.informationVC.onSilent)")
            
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
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(handleTimer(_:)), userInfo: nil, repeats: true)
            guard includeNotification else { return }
            // start local notification (so we're notified if timer expires while app is not running)
            if #available(iOS 10, *) {
                let content = UNMutableNotificationContent()
                content.title = "Eggs cooked!"
                content.body = "Whoo, hoo!"
                content.sound = UNNotificationSound.init(named: shortSongForNotif)
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: stopTime.timeIntervalSinceNow, repeats: false)
                let notification = UNNotificationRequest(identifier: timerId, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(notification)
            }
        }
    }
    
    func handleTimer(_ timer: Timer) {
        let now = Date()
        
        
        if stopTime! > now {
            eggTimerView.timerLabel.text = dateComponentsFormatter.string(from: now, to: stopTime!)
        } else {
            stopTimer()
            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate), nil)
            
            if informationVC.onSilent == true {
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
        UNUserNotificationCenter.current().removeAllPendingNotificationRequests()
        self.dismiss(animated: true, completion: nil)
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
            eggTimerView.timerLabel.text = "0:00"
    }
}







