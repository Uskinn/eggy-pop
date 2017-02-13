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
        UIImageView().showBackground(in: self)
        
        configureFile()
    }
    
    
    func configureFile() {
        setupStopButtonConstraints()
        setupHeaderLabelConstraints()
        setupLogoImageConstraints()
        setupTimerTimerConstraints()
    }
    
    func setupTimerTimerConstraints() {
        addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        timerLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.927).isActive = true
        timerLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.252).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.22).isActive = true
        timerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * 0).isActive = true
        print("Inside setup timer constr \(timerLabel.bounds)")
    }
    
    func setupStopButtonConstraints() {
        addSubview(stopButton)
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        stopButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.927).isActive = true
        stopButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.108).isActive = true
        stopButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.3).isActive = true
        stopButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * 0).isActive = true
    }
    
    func setupHeaderLabelConstraints() {
        addSubview(headerLabel)
        headerLabel.translatesAutoresizingMaskIntoConstraints = false
        headerLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        headerLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07).isActive = true
        headerLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.43).isActive = true
        headerLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.077).isActive = true
        logoImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.06).isActive = true
        logoImageView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * 0.43).isActive = true
        logoImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
