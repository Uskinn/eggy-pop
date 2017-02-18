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
        self.image = Image.logoImage
    }
    
    func showBackgroundImage(in mainView: UIView) {
        self.frame = mainView.bounds
        self.image = Image.appBackground
        mainView.addSubview(self)
    }
    
    func setupEmptyEggSizeImage() {
        self.image = Image.emptyEggCategoryButtonImage
    }
}
