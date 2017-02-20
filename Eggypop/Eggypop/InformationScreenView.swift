//
//  InformationScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/18/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class InformationScreenView: UIView {
    
    var scrollViewImageView: UIImageView = {
        let scroll = UIImageView()
        scroll.setupScrollViewImage()
        return scroll
    }()
    
    var infoScrollView: UIScrollView = {
        let info = UIScrollView()
        info.setupScrollView()
        return info
    }()
    
    var dismissScrollViewButton: UIButton = {
        let dismiss = UIButton()
        dismiss.setupDismissButton()
        return dismiss
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        
       // setupScrollViewImageConstraints()
        setupInfoScrollViewConstraints()
        setupDismissButtonConstraints()
        
        self.insertSubview(dismissScrollViewButton, belowSubview: infoScrollView)
        
        
        let imageWigth: CGFloat = 324
        let imageHeight: CGFloat = 945
        
        scrollViewImageView.frame.size.width = imageWigth
        scrollViewImageView.frame.size.height = imageHeight
        scrollViewImageView.frame.origin.x = 1
        scrollViewImageView.frame.origin.y = 5
        
        infoScrollView.addSubview(scrollViewImageView)
        
       infoScrollView.contentSize = CGSize(width: imageWigth, height: imageHeight)
        
    }
    
    func setupConstraintsFor(subView: AnyObject, widthAncor: CGFloat, heightAncor: CGFloat, centerYAncor: CGFloat, centerXAncor: CGFloat) {
        subView.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: widthAncor).isActive = true
        subView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: heightAncor).isActive = true
        subView.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * centerYAncor).isActive = true
        subView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: UIScreen.main.bounds.width * centerXAncor).isActive = true
    }
    
//        func setupScrollViewImageConstraints() {
//            infoScrollView.addSubview(scrollViewImageView)
//
//            scrollViewImageView.translatesAutoresizingMaskIntoConstraints = false
//            scrollViewImageView.leftAnchor.constraint(equalTo: infoScrollView.leftAnchor).isActive = true
//            scrollViewImageView.rightAnchor.constraint(equalTo: infoScrollView.rightAnchor).isActive = true
//            scrollViewImageView.topAnchor.constraint(equalTo: infoScrollView.topAnchor).isActive = true
//            scrollViewImageView.bottomAnchor.constraint(equalTo: infoScrollView.bottomAnchor).isActive = true
//    
//        }
    
    func setupInfoScrollViewConstraints() {
        addSubview(infoScrollView)
        infoScrollView.translatesAutoresizingMaskIntoConstraints = false
        self.setupConstraintsFor(subView: infoScrollView, widthAncor: 0.9, heightAncor: 0.75, centerYAncor: 0.0, centerXAncor: 0.0)
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



