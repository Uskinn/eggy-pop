//
//  MoreView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 8/5/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class MoreView: UIView {
    
    let logoImageButton: UIButton = {
        let button = UIButton(type: .system)
        let image = #imageLiteral(resourceName: "logoDismissButton").withRenderingMode(.alwaysOriginal)
        button.setImage(image, for: .normal)
        return button
    }()
    
    let shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "shareButton"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    let shareLabel: UILabel = {
        let label = UILabel()
        label.text = "Share Eggypop with egg lovers"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
//        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        label.textColor = .black
        
        return label
    }()
    
    let reviewLabel: UILabel = {
        let label = UILabel()
        label.text = "Review me. Give me five"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        return label
    }()
    
    let reviewButton: UIButton = {
        let image = #imageLiteral(resourceName: "shareButton").withRenderingMode(.alwaysTemplate)
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.tintColor = .black
        return button
    }()
    
    let emailLabel: UILabel = {
        let label = UILabel()
        label.text = "Email me"
        label.font = UIFont(name: "LucidaGrande-Bold", size: 0)
        label.textAlignment = .left
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.textColor = UIColor(red:0.59, green:0.45, blue:0.45, alpha:1.0)
        return label
    }()
    
    let emailButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "emailButton"), for: .normal)
        button.tintColor = .black
        return button
    }()
    
    let shareContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    let reviewContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    let emailContainerView: UIView = {
        let view = UIView()
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        setupLogoImageConstraints()
        addSubview(shareContainerView)
        addSubview(reviewContainerView)
        shareContainerView.addSubview(shareLabel)
        shareContainerView.addSubview(shareButton)
        reviewContainerView.addSubview(reviewLabel)
        reviewContainerView.addSubview(reviewButton)
        addSubview(emailContainerView)
        emailContainerView.addSubview(emailLabel)
        emailContainerView.addSubview(emailButton)
        
        // horizontal container
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: shareContainerView)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: reviewContainerView)
        addConstraintsWithFormat(format: "H:|-16-[v0]-16-|", views: emailContainerView)
        
        shareContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: shareLabel, shareButton)
        reviewContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: reviewLabel, reviewButton)
        emailContainerView.addConstraintsWithFormat(format: "H:|[v0]-[v1(30)]", views: emailLabel, emailButton)
        
        // vertical constraints
        addConstraintsWithFormat(format: "V:|-70-[v0(40)]-70-[v1(40)]-70-[v2(40)]", views: shareContainerView, reviewContainerView, emailContainerView)
        
        // centerY constraints
        shareContainerView.addConstraint(NSLayoutConstraint(item: shareLabel, attribute: .centerY, relatedBy: .equal, toItem: shareContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        shareContainerView.addConstraint(NSLayoutConstraint(item: shareButton, attribute: .centerY, relatedBy: .equal, toItem: shareContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewLabel, attribute: .centerY, relatedBy: .equal, toItem: reviewContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewButton, attribute: .centerY, relatedBy: .equal, toItem: reviewContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        
        emailContainerView.addConstraint(NSLayoutConstraint(item: emailLabel, attribute: .centerY, relatedBy: .equal, toItem: emailContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        emailContainerView.addConstraint(NSLayoutConstraint(item: emailButton, attribute: .centerY, relatedBy: .equal, toItem: emailContainerView, attribute: .centerY, multiplier: 1, constant: 0))
        
        // height constraints
        shareContainerView.addConstraint(NSLayoutConstraint(item: shareButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        reviewContainerView.addConstraint(NSLayoutConstraint(item: reviewButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        emailContainerView.addConstraint(NSLayoutConstraint(item: emailButton, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
    }
    
    func setupLogoImageConstraints() {
        addSubview(logoImageButton)
        logoImageButton.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: logoImageButton, widthAncor: 0.077, heightAncor: 0.06, centerYAncor: 0.43, centerXAncor: 0.0)
    }
}
