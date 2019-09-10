//
//  Weapons.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Weapon {
    var damage: Int
    var givePoint: Bool
    var type: String
    
    init(damage: Int, givePoint: Bool, type: String) {
        self.damage = damage
        self.givePoint = givePoint
        self.type = type
    }
}
