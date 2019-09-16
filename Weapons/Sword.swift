//
//  Sword.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Sword: Weapon {
    static let type = "Sword"
    static var damage = 10
    static let description = "This weapon \(type) and has \(damage) of damage"
    
    init() {
        super.init(damage: Sword.damage, type: Sword.type)
    }
}
