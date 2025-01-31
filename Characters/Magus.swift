//
//  Magus.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//
import Foundation

class Magus: Character {

    static let startLifePoint = 70
    static let typeCharacters = "Magus"
    static let weapon = MagicWand.damage
    static let description = "⛑ This character is a \(typeCharacters) with starting life point at \(startLifePoint) and \(MagicWand.damage) of damage but he's able to treat the rest of your team."

    init(name: String) {
        super.init(name: name, health: Magus.startLifePoint, weapon: MagicWand(), typeCharacters: Magus.typeCharacters)
    }

    func care(target: Character) {
        target.health += self.weapon.damage
        print("✅ You've chosen to treat \(target.name), he has now \(target.health) health\n")
    }
}
