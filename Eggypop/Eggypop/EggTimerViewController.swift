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

class EggTimerViewController: UIViewController {
    
    let eggTimerView = EggTimerVew()
    var secondsLeft: Bool = false
    var timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(eggTimerView)
        eggTimerView.layoutSubviews()
        eggTimerView.stopButton.addTarget(self, action: #selector(stopButtonCkicked(_:)), for: .touchUpInside)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        DispatchQueue.main.async {
            self.secondsLeft = false
            if self.timer.isValid == false {
                self.timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(EggTimerViewController.updateTimer) , userInfo: nil, repeats: true)
            }
        }
    }
    
    func stopButtonCkicked(_ button: UIButton) {
        self.dismiss(animated: true, completion: nil)
        timer.invalidate()
        eggTimerView.timerLabel.text = "00:00"
    }

    // MARK: - update timer func
    func updateTimer() {
        if HomeScreenView.seconds > 0 {
            print(HomeScreenView.seconds)
            HomeScreenView.seconds -= 1
            eggTimerView.timerLabel.text = String(EggTimer.timeFormatted(HomeScreenView.seconds))
        } else if HomeScreenView.seconds == 0 && !secondsLeft {
            // add vibrator
            AudioServicesPlayAlertSoundWithCompletion(SystemSoundID(kSystemSoundID_Vibrate), nil)
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
