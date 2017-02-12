//
//  HomeScreenView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

final class HomeScreenView: UIView {
    
    var largeEggButton: UIButton = {
        let largeEgg = UIButton()
        largeEgg.setupLargeButton()
        return largeEgg
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.frame = UIScreen.main.bounds
        UIImageView().showBackground(in: self)
        setupLargeEggButtonConstraints()
    }
    
    func setupLargeEggButtonConstraints() {
        addSubview(largeEggButton)
        largeEggButton.translatesAutoresizingMaskIntoConstraints = false
        largeEggButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.5).isActive = true
        largeEggButton.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.07).isActive = true
        largeEggButton.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: UIScreen.main.bounds.height * -0.03).isActive = true
        largeEggButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
}
