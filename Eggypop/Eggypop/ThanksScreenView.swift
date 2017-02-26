//
//  ThanksScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class ThanksScreenView: UIView {
    
    var thanksLabel: UILabel = {
        let text = UILabel()
        text.setupThanksLabel()
        return text
    }()
    
    var thanksScrollView: UIScrollView = {
        let thanks = UIScrollView()
        thanks.setupScrollView()
        return thanks
    }()
    
    var dismissScrollViewButton: UIButton = {
        let dismiss = UIButton()
        dismiss.setupDismissButton()
        return dismiss
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        setupInfoScrollViewConstraints()
        setupThanksLabelConstraints()
        setupDismissButtonConstraints()
        self.insertSubview(dismissScrollViewButton, belowSubview: thanksScrollView)
    }
    
    func setupThanksLabelConstraints() {
        thanksScrollView.addSubview(thanksLabel)

        thanksLabel.translatesAutoresizingMaskIntoConstraints = false
        
        thanksLabel.leadingAnchor.constraint(equalTo: thanksScrollView.leadingAnchor).isActive = true
        thanksLabel.trailingAnchor.constraint(equalTo: thanksScrollView.trailingAnchor).isActive = true
        thanksLabel.topAnchor.constraint(equalTo: thanksScrollView.topAnchor, constant: 20).isActive = true
        thanksLabel.bottomAnchor.constraint(equalTo: thanksScrollView.bottomAnchor, constant: -20).isActive = true
        thanksLabel.widthAnchor.constraint(equalTo: thanksScrollView.widthAnchor, multiplier: 1.0 ).isActive = true
        thanksLabel.heightAnchor.constraint(equalTo: thanksScrollView.heightAnchor, multiplier: 1.0).isActive = true

    }
    
    func setupInfoScrollViewConstraints() {
        addSubview(thanksScrollView)
        thanksScrollView.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: thanksScrollView, widthAncor: 0.9, heightAncor: 0.75, centerYAncor: 0.0, centerXAncor: 0.0)
    }
    
    func setupDismissButtonConstraints() {
        addSubview(dismissScrollViewButton)
        dismissScrollViewButton.translatesAutoresizingMaskIntoConstraints = false
        dismissScrollViewButton.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        dismissScrollViewButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        dismissScrollViewButton.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        dismissScrollViewButton.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}
