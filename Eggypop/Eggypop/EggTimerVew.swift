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
    
    var headerLabel: UILabel = {
        let header = UILabel()
        header.setupHeaderLabel()
        return header
    }()
    
    var logoImageView: UIImageView = {
        var logo = UIImageView()
        logo.setupLogoImage()
        return logo
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
    }
    
    func configureFile() {
        setupStopButtonConstraints()
        setupHeaderLabelConstraints()
        setupLogoImageConstraints()
        setupTimerTimerConstraints()
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    
    func setupTimerTimerConstraints() {
        addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: timerLabel, widthAncor: 0.927, heightAncor: 0.252, centerYAncor: -0.22, centerXAncor: 0)
    }
    
    func setupStopButtonConstraints() {
        addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: stopButton, widthAncor: 0.927, heightAncor: 0.108, centerYAncor: 0.3, centerXAncor: 0)
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: headerLabel, widthAncor: 0.5, heightAncor: 0.07, centerYAncor: -0.43, centerXAncor: 0)
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: logoImageView, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.43, centerXAncor: 0)
    }
}
