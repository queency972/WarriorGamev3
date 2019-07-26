//
//  Hammer.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Hammer: Weapons {
    static let type = "Hammer"
    static var damage = 8
    static let description = "This weapon \(type) and has \(damage) of damage"

    init() {
        super.init(damage: Hammer.damage, givePoint: false, type: Hammer.type)
    }
}
