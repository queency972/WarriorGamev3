//
//  Dwarf.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Dwarf: Character {
    static var isDead = false
    static let startLifePoint = 30
    static let typeCharacters = "Dwarf"
    static let weapon = Axe.damage
    static let description = "🗡 This character is a \(typeCharacters) with start life points \(startLifePoint) and has a strenght of \(Axe.damage) points of damage."
    
    init(name: String) {
        super.init(name: name, health: Dwarf.startLifePoint, weapon: Axe(), typeCharacters: Dwarf.typeCharacters, specialWeapon: Drug(), isDead: Dwarf.isDead)
    }
}
