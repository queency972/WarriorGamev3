//
//  Fighter.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Fighter: Character {
    static var isDead = false
    static let startLifePoint = 30
    static let typeCharacters = "Fighter"
    static let weapon = Sword.damage
    static let description = "⚔️ This character is a \(typeCharacters) with starting life point at \(startLifePoint) and has a strenght of \(Sword.damage) points of damage."
    
    init(name: String) {
        super.init(name: name, health: Fighter.startLifePoint, weapon: Sword(), typeCharacters: Fighter.typeCharacters, specialWeapon: Drug(), isDead: Fighter.isDead)
    }
}
