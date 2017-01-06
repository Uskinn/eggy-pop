//
//  TimerViewController.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/4/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import QuartzCore

// button
let stopButton = UIButton(type: .system)

// label
let headerLabel = UILabel()
var timerLabel = UILabel()

// image
let stopButtonImage = UIImage(named: "stopButton")
let timerLabelImage = UIImage(named: "timerLabel")

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
        
        updateTimer()
        
        timerLabel.text = String(EggTimer.timeFormatted(totalSeconds: seconds))
        
        if timer.isValid == false {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(TimerViewController.updateTimer) , userInfo: nil, repeats: true)
        }
    }
    
    func header() {
        // label programmatically
        headerLabel.frame = CGRect(x: 118.00, y: 36.00, width: 140.00, height: 23.00)
        headerLabel.text = "eggypop"
        headerLabel.textColor = appColor.headerColor
        headerLabel.font = UIFont(name: "LucidaGrande", size: 0)
        headerLabel.font = UIFont.boldSystemFont(ofSize: 20)
        headerLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: headerLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(2.5), range: NSRange(location: 0, length: attributedString.length))
        headerLabel.attributedText = attributedString
        
        self.view.addSubview(headerLabel)
    }
    
    func logo() {
        let logoImage = UIImage(named: "logoIggy")
        let appLogo = UIImageView()
        
        appLogo.image = logoImage
        appLogo.frame = CGRect(x: 171.00, y: 596.00, width: 36.00, height: 44.00)
        
        self.view.addSubview(appLogo)
    }
    
    func stopButtonFunc() {
        stopButton.frame = CGRect(x: 138.00, y: 481.00, width: 100.00, height: 100.00)
        stopButton.setTitle("stop", for: .normal)
        
        stopButton.setBackgroundImage(stopButtonImage, for: .normal)
        
        stopButton.setTitleColor(.white, for: .normal)
        stopButton.titleLabel?.font = UIFont(name: "LucidaGrande", size: 0)
        stopButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 22)
        
        // adding spacing between characters
        let title = stopButton.title(for: .normal)
        let attributedTitle = NSAttributedString(string: title!, attributes: [NSKernAttributeName: 1.0])
        stopButton.setAttributedTitle(attributedTitle, for: .normal)
        
        stopButton.addTarget(self, action: #selector(stopButtonCkicked(_:)), for: .touchUpInside)
        
        view.addSubview(stopButton)
    }
    
    func stopButtonCkicked(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
      //  timer.invalidate()
        timerLabel.text = "00:00"
    }
    
    func timerLabelFunc() {
        // label programmatically
        timerLabel.frame = CGRect(x: 13.00, y: 99.00, width: 348.00, height: 168.00)
        timerLabel.backgroundColor = appColor.mainOrangeColor
        
        timerLabel.layer.masksToBounds = true
        timerLabel.layer.cornerRadius = 8
        
        timerLabel.text = "00:00"
        timerLabel.textColor = .white
        timerLabel.font = UIFont(name: "LucidaGrande", size: 0)
        timerLabel.font = UIFont.systemFont(ofSize: 112)
        timerLabel.textAlignment = NSTextAlignment.center
        
        // adding spacing between characters
        let attributedString = NSMutableAttributedString(string: timerLabel.text!)
        attributedString.addAttribute(NSKernAttributeName, value: CGFloat(-3.5), range: NSRange(location: 0, length: attributedString.length))
        timerLabel.attributedText = attributedString
        
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
    }
}
