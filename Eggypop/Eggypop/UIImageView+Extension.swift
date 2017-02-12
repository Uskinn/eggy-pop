//
//  UIImageView+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/12/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UIImageView {
    
    func setupLogoImage() {
        let logo = Image()
        self.image = logo.logoImage
    }
    
    func showBackground(in mainView: UIView) {
        self.frame = mainView.bounds
        self.image = Image.appBackground
        mainView.addSubview(self)
    }
}

//let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
//backgroundImage.image = UIImage(named: "RubberMat")
//backgroundImage.contentMode =  UIViewContentMode.scaleAspectFill
//self.view.insertSubview(backgroundImage, at: 0)
