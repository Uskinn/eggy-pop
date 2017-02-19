//
//  InformationScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/18/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class InformationScreenView: UIView {

    var timerLabel: UILabel = {
        let timer = UILabel()
        timer.setupTimer()
        return timer
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        
        setupTimerConstraints()
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    

    
    func setupTimerConstraints() {
        addSubview(timerLabel)
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: timerLabel, widthAncor: 0.927, heightAncor: 0.252, centerYAncor: -0.22, centerXAncor: 0)
    }

}



