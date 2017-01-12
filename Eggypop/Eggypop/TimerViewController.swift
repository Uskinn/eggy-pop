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
        stopButtonFunc()
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
        
        timerLabel.frame = CGRect(x: 14.00, y: 100.00, width: 348.00, height: 168.00)
        stopButton.frame = CGRect(x: 137.04, y: 486.00, width: 100.00, height: 100.00)
    }
    
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

