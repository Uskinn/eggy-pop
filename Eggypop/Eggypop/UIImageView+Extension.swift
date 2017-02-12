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
    
    func showBackground(in myView: UIView) {
        let imageView = UIImageView(frame: myView.bounds)
        imageView.image = UIImage(named: "backgroundImage")
        myView.addSubview(imageView)
    }
}
