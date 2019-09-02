//
//  Dwarf.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Dwarf: Character {
    static let startLifePoint = 20
    static let typeCharacters = "Dwarf"
    static let weapon = Axe.damage
    static let description = "🗡 This character is a \(typeCharacters) with start life points \(startLifePoint) and has a Strength of \(Axe.damage) points of damage."
    
    init(name: String) {
        super.init(name: name, health: Dwarf.startLifePoint, weapon: Axe(), typeCharacters: Dwarf.typeCharacters, specialWeapon: Drug())
    }
}
