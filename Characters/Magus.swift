//
//  Magus.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//
import Foundation

class Magus: Character {

    static let startLifePoint = 20
    static let typeCharacters = "Magus"
    static let weapon = MagicWand.damage
    static let description = "⛑ This character is a \(typeCharacters) with starting life point at \(startLifePoint) and \(MagicWand.damage) of damage but he's able to treat the rest of your team."

    init(name: String) {
        super.init(name: name, health: Magus.startLifePoint, weapon: MagicWand(), typeCharacters: Magus.typeCharacters)
    }

    func care(team: Player) {
        print("Which character you want treat ?\n")
        for (index, character) in team.myTeam.enumerated() {
            print ("\(index)\nWarriors: \(character.name)\nType: \(character.typeCharacters)\nHealth: \(character.health)\n")
        }
        if let target = readLine() {
            if let choice = Int(target) {
                if choice <= team.myTeam.count {
                    let healedChar = team.myTeam[choice]
                    print("✅ You've chosen to treat \(healedChar.name)")
                    healedChar.health += self.weapon.damage
                    print("\(healedChar.name) has now \(healedChar.health)\n")
                }
            }
        }
    }
}
