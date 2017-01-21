//
//  TimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/4/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore
import JSSAlertView

let stopButton = UIButton(type: .system)
var timerLabel = UILabel()
var timer = Timer()
var seconds: Int = 0
var secondsLeft: Bool = false

class TimerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
//        NotificationCenter.default.addObserver(self, selector: Selector(("pauseApp")), name: NSNotification.Name.UIApplicationDidEnterBackground, object: nil)
//        
//        NotificationCenter.default.addObserver(self, selector: Selector(("startApp")), name: NSNotification.Name.UIApplicationDidBecomeActive, object: nil)
//        

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        secondsLeft = false
        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
        }
        
        header()
        timerLabelFunc()
        logo()
        stopButtonFunc()
    }
    
//    func pauseApp(){
//        timer.stop()  //invalidate timer
//        self.currentBackgroundDate = NSDate()
//    }
//    
//    func startApp(){
//        let difference = self.currentBackgroundDate.timeIntervalSinceDate(NSDate())
//        self.handler(difference) //update difference
//        self.start() //start timer
//    }
    
    // #MARK: Header
    func header() {
        Label.headerLabel(headerLabel)
        self.view.addSubview(headerLabel)
    }
    
    // #MARK: Header
    func logo() {
        Logo.logo(appLogo)
        self.view.addSubview(appLogo)
    }
    
    // #MARK: Stop button
    func stopButtonFunc() {
        Button.stopButton(stopButton)
        stopButton.addTarget(self, action: #selector(stopButtonCkicked(_:)), for: .touchUpInside)
        view.addSubview(stopButton)
    }
    
    func stopButtonCkicked(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
        timer.invalidate()
        timerLabel.text = "00:00"
    }
    
    // #MARK: Timer label view
    func timerLabelFunc() {
        Label.timerLabel(timerLabel)
        self.view.addSubview(timerLabel)
    }
    
    // #MARK: Updating timer
    func updateTimer() {
        
        if seconds > 0 {
  //          UserNotificationManager.shared.addNotificationWithTime(seconds)
            print(seconds)
            seconds -= 1
            timerLabel.text = String(EggTimer.timeFormatted(seconds))
        } else if seconds == 0 && !secondsLeft {
            print(secondsLeft)
            Sound.iggySong()
            Alert.alertWithTitle(self, callback: {
                audioPlayer.stop()
                self.dismiss(animated: true, completion: nil)
            })
            secondsLeft = true
        }
    }
}

