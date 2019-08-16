//
//  Colossus.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Colossus: Character {
    static let startLifePoint = 20
    static let typeCharacters = "Colossus"
    static let weapon = Hammer.damage
    static let description = "🔨 This character is a \(typeCharacters) with starting life points \(startLifePoint) and has a strenght of \(Hammer.damage) points of damage."

    init(name: String) {
        super.init(name: name, health: Colossus.startLifePoint, weapon: Hammer(), typeCharacters: Colossus.typeCharacters, specialWeapon: Drug())
    }
}
