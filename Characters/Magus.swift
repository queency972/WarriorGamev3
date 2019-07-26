//
//  Magus.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Magus: Character {
    static var isDead = false
    static let startLifePoint = 30
    static let typeCharacters = "Magus"
    static let weapon = MagicWand.damage
    static let description = "⛑ This character is a \(typeCharacters) with starting life point at \(startLifePoint) and \(MagicWand.damage) of damage but he's able to treat the rest of your team."
    
    init(name: String) {
        super.init(name: name, health: Magus.startLifePoint, weapon: MagicWand(), typeCharacters: Magus.typeCharacters, specialWeapon: Drug(), isDead: Magus.isDead)
    }
    // Function which allow Magus to treat his colleagues
    static func careTeam(team: Int) {
        print("⛑⛑⛑ Which warrior you want treat ? ⛑⛑⛑\n")
        if team == 1 { Character.presenteTeam(team: 1) }
        else { Character.presenteTeam(team: 2) }
        if let choice = readLine() {
            switch choice {
            case "1": if team == 1 {
                if team1[0].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team1[0].health += MagicWand.addLifePoint
                    print("✅ You treated \(team1[0].name) he's now \(team1[0].health) health.") }}
            else {
                if team2[0].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team2[0].health += MagicWand.addLifePoint
                    print("✅ You treated \(team2[0].name) he's now \(team2[0].health) health.") }}
            case "2": if team == 1 {
                if team1[1].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team1[1].health += MagicWand.addLifePoint
                    print("✅ You treated \(team1[1].name) he's now \(team1[1].health) health.") }}
            else {
                if team2[1].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team2[1].health += MagicWand.addLifePoint
                    print("✅ You treated \(team2[1].name) he's now \(team2[1].health) health.") }}
            case "3": if team == 1 {
                if team1[2].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team1[2].health += MagicWand.addLifePoint
                    print("✅ You treated \(team1[2].name) he's now \(team1[2].health) health.") }}
            else {
                if team2[2].isDead == true { print("❌ Character is dead ! ❌"); careTeam(team: team) }
                else {
                    team2[2].health += MagicWand.addLifePoint
                    print("✅ You just treated \(team2[2].name) he's now \(team2[2].health) health.") }}
            default: print("❌ Enter a choice between 1 to 3 ❌");
            }
        }
    }
}
