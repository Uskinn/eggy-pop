//
//  EggTimerVew.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/13/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class EggTimerVew: UIView {
    
    var timerLabel: UILabel = {
        let timer = UILabel()
        timer.setupTimer()
        return timer
    }()
    
    let timerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = UIColor(red:0.99, green:0.91, blue:0.77, alpha:1.0)
        view.layer.cornerRadius = 8
        return view
    }()
    
    var headerLabel: UILabel = {
        let header = UILabel()
        header.setupHeaderLabel()
        return header
    }()

    var stopButton: UIButton = {
        let stop = UIButton()
        stop.setupStopButton()
        return stop
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        UIImageView().showBackgroundImage(in: self)
        configureFile()
        
        timerView.addSubview(timerLabel)
        
        timerView.addConstraint(NSLayoutConstraint(item: timerLabel, attribute: .centerX, relatedBy: .equal, toItem: timerView, attribute: .centerX, multiplier: 1, constant: 0))
        timerView.addConstraint(NSLayoutConstraint(item: timerLabel, attribute: .centerY, relatedBy: .equal, toItem: timerView, attribute: .centerY, multiplier: 1, constant: 0))
    }
    
    func configureFile() {
        setupStopButtonConstraints()
        setupTimerConstraints()
    }
    
    func setupTimerConstraints() {
        addSubview(timerView)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: timerView, widthAncor: 0.927, heightAncor: 0.252, centerYAncor: -0.22, centerXAncor: 0.0)
    }
    
    func setupStopButtonConstraints() {
        addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: stopButton, widthAncor: 0.927, heightAncor: 0.108, centerYAncor: 0.3, centerXAncor: 0.0)
    }
}
