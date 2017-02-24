//
//  InformationScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/18/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import AVFoundation

final class InformationScreenView: UIView {
    
    var scrollViewImageView: UIImageView = {
        let scroll = UIImageView()
        
        
        let rect = AVMakeRect(aspectRatio: image.size, insideRect: imageView.bounds)
        
        
        
        // scroll.autoresizingMask = [.flexibleWidth, .flexibleHeight, .flexibleBottomMargin, .flexibleRightMargin, .flexibleLeftMargin, .flexibleTopMargin]
        // scroll.contentMode = .scaleAspectFit
        // scroll.clipsToBounds = true
        
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
        
        setupScrollViewImageConstraints()
        setupInfoScrollViewConstraints()
        setupDismissButtonConstraints()
        
        self.insertSubview(dismissScrollViewButton, belowSubview: infoScrollView)
    }
    
    func setupScrollViewImageConstraints() {
        infoScrollView.addSubview(scrollViewImageView)
        scrollViewImageView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollViewImageView.translatesAutoresizingMaskIntoConstraints = false
        scrollViewImageView.leftAnchor.constraint(equalTo: infoScrollView.leftAnchor).isActive = true
        scrollViewImageView.rightAnchor.constraint(equalTo: infoScrollView.rightAnchor).isActive = true
        scrollViewImageView.topAnchor.constraint(equalTo: infoScrollView.topAnchor).isActive = true
        scrollViewImageView.bottomAnchor.constraint(equalTo: infoScrollView.bottomAnchor).isActive = true
        scrollViewImageView.widthAnchor.constraint(equalTo: infoScrollView.widthAnchor).isActive = true
    }
    
    func setupInfoScrollViewConstraints() {
        addSubview(infoScrollView)
        infoScrollView.translatesAutoresizingMaskIntoConstraints = false
        Constraints.setupConstraintsIn(myView: self, for: infoScrollView, widthAncor: 0.9, heightAncor: 0.75, centerYAncor: 0.0, centerXAncor: 0.0)
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



