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

// button
let stopButton = UIButton(type: .system)

// label
var timerLabel = UILabel()

// object
var timer = Timer()
var seconds: Int = 0

class TimerViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        header()
        timerLabelFunc()
        logo()
        
        stopButtonFunc()
        
        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
        }
    }
    
    func header() {
        Label.headerLabel(headerLabel)
        self.view.addSubview(headerLabel)
    }
    
    func logo() {
        Logo.logo(appLogo)
        self.view.addSubview(appLogo)
    }
    
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
    
    func timerLabelFunc() {
        Label.timerLabel(timerLabel)
        self.view.addSubview(timerLabel)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        timerLabel.center.y += self.view.bounds.height
        stopButton.center.y += self.view.bounds.height
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            timerLabel.center.y -= 650
        },
                       completion: nil
        )
        
        UIView.animate(withDuration: 0.3, delay: 0, options: [], animations: {
            stopButton.center.y -= 700
        },
                       completion: nil
        )
    }
    
    func updateTimer() {
        if seconds > 0 {
            seconds -= 1
            timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: seconds))
        }
        
        if seconds == 0 {
            
            let alertview = JSSAlertView().show(self,
                                                title: "Hey",
                                                text: "Eggs are ready",
                                                buttonText: "Bon appetit!",
                                                color: UIColorFromHex(appColor.hexMainOrangeColor, alpha: 1))
            alertview.setTextTheme(.light)
            alertview.addAction {
                self.dismiss(animated: true, completion: nil)
            }
        }
        
        
        
    }
}
