//
//  Egg.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 2/21/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit

enum EggSize: String {
    case large = "Large"
    case extraLarge = "Extra Large"
    case jumbo = "Jumbo"
}

enum EggType: String {
    case soft = "Soft"
    case medium = "Medium"
    case hard = "Hard"
}

struct Egg {
    let eggSize: EggSize
    let eggType: EggType
}




