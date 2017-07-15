//
//  UITextView+Extension.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/25/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

extension UITextView {
        func setupThanksTextView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 8
        self.textAlignment = .justified
        self.font = UIFont.init(name: "TeluguSangamMN-Bold", size: 16)
        self.contentMode = .scaleAspectFit
    }
}
