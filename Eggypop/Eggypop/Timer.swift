//
//  Timer.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/3/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import Foundation

final class EggTimer {
    class func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}
