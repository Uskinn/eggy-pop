//
//  ThanksScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/19/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class ThanksScreenView: UIView {
    
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
        setupDismissButtonConstraints()
        self.insertSubview(dismissScrollViewButton, belowSubview: thanksScrollView)
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    
    func setupInfoScrollViewConstraints() {
        addSubview(thanksScrollView)
        thanksScrollView.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: thanksScrollView, widthAncor: 0.9, heightAncor: 0.75, centerYAncor: 0.0, centerXAncor: 0.0)
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
