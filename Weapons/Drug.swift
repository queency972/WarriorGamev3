//
//  NewWeapon.swift
//  mainTest
//
//  Created by Steve Bernard on 20/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Drug: specialWeapon {
    static let type = "Drug"
    static let damage = 50
    static let description = "This weapon is \(type) and has \(damage) of damage"
    
    init() {
        super.init(damage: Drug.damage)
    }
}
