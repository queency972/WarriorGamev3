//
//  MagicWand.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class MagicWand: Weapon {
    static let type = "MagicWand"
    static let damage = 5
    static let description = "This weapon \(type) and has \(damage) of damage"
    
    init() {
        super.init(damage: MagicWand.damage, givePoint: true, type: MagicWand.type)
    }
}
