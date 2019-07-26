//
//  Chemist.swift
//  mainTest
//
//  Created by Steve Bernard on 27/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Chemist: Character {
    static var isDead = false
    static let startLifePoint = 30
    static let typeCharacters = "Chemist"
    static let weapon = Poison.damage
    static let description = "🛩 This character is a \(typeCharacters) with starting life points \(startLifePoint) and has a random strenght of X points of damage."
    
    init(name: String) {
        super.init(name: name, health: Chemist.startLifePoint, weapon: Poison(), typeCharacters: Chemist.typeCharacters, specialWeapon: Drug(), isDead: Chemist.isDead)
    }
}
