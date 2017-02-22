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
        setupLogoImageConstraints()
        setupTimerConstraints()
    }
    
    func setupTimerConstraints() {
        addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: timerLabel, widthAncor: 0.927, heightAncor: 0.252, centerYAncor: -0.22, centerXAncor: 0.0)
    }
    
    func setupStopButtonConstraints() {
        addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: stopButton, widthAncor: 0.927, heightAncor: 0.108, centerYAncor: 0.3, centerXAncor: 0.0)
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: logoImageView, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.43, centerXAncor: 0.0)
    }
}
