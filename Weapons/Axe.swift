//
//  Axe.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Axe: Weapons {
    static let type = "Axe"
    static var damage = 15
    static let description = "This weapon \(type) and has \(damage) of damage"
    
    init() {
        super.init(damage: Axe.damage, givePoint: false, type: Axe.type)
    }
}
