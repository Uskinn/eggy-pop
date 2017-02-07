//
//  BackgroundView.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/31/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

class BackgroundView {
    
   class func showBackground(in myView: UIView) {
        let imageView = UIImageView(frame: myView.bounds)
        imageView.image = UIImage(named: "backgroundImage")
        myView.addSubview(imageView)
    }
}
