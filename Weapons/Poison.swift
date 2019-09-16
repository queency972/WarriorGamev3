//
//  Poison.swift
//  mainTest
//
//  Created by Steve Bernard on 27/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Poison: Weapon {
    static let type = "Poison"
    static var damage = Int.random(in: 5...70)
    static let description = "This weapon \(type) and has now \(Poison.damage) !"
   
    init() {
        super.init(damage: Poison.damage, type: Poison.type)
    }
}
