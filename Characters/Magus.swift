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
        super.init(name: name, health: Magus.startLifePoint, weapon: MagicWand(), typeCharacters: Magus.typeCharacters, specialWeapon: Drug())
    }
    // Function which allow Magus to treat his colleagues
    static func careTeam(team: Player) {
        print("⛑⛑⛑ Which warrior you want treat ? ⛑⛑⛑\n")
        Character.presenteTeam(team: team)
        if let choice = readLine() {
            switch choice {
            case "1":
                team.myTeam[0].health += MagicWand.addLifePoint
                print("✅ You treated \(team.myTeam[0].name) he's now \(team.myTeam[0].health) health.")
            case "2":
                team.myTeam[1].health += MagicWand.addLifePoint
                print("✅ You treated \(team.myTeam[1].name) he's now \(team.myTeam[1].health) health.")
            case "3":
                team.myTeam[2].health += MagicWand.addLifePoint
                print("✅ You treated \(team.myTeam[2].name) he's now \(team.myTeam[2].health) health.")
            default: print("❌ Enter a choice between 1 to 3 ❌");
            }
        }
    }
}
