//
//  Game.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//
import Foundation

class Character {

    static var preCheckNameTeam = [String]()
    let name: String
    var health: Int
    var weapon: Weapon
    var typeCharacters: String

    init(name: String, health: Int, weapon: Weapon, typeCharacters: String) {
        self.name = name
        self.health = health
        self.typeCharacters = typeCharacters
        self.weapon = weapon
    }

    // Function which allow to presente available warrior
    func presenteCharacter() {
        print("Name:", self.name)
        print("Character:",self.typeCharacters)
        print("Weapon:", self.weapon.type)
        print("Health:", self.health)
        print("Strength:", self.weapon.damage)
        print("\n") }
    
    // Function which allow to presente their own warriors
    static func presenteTeam(team: Player)  {
        var numberChoice = 1
        for character in team.myTeam {
            print("\(numberChoice)"); character.presenteCharacter()
            numberChoice += 1
        }
    }

    // Function which allow to check if name already exist
    static func nameAlreadyExist(nameWarrior: String) -> Bool {
        if preCheckNameTeam.contains(nameWarrior.uppercased()) {
            print("\n❌ Sorry, name already used, choose another one. ❌\n")
            return true
        } else {
            return false
        }
    }

    // Function "attack" allowing to attack a character
    func attack(target: Character) {
        target.health = target.health - self.weapon.damage
        if target.health < 0 {
            target.health = 0
        }
        print("\n\(self.name) has attaked \(target.name) with \(self.weapon.damage) of damage. \(target.name) has \(target.health) health 💥\n")
        if target.health == 0 { print("\(target.name) is dead ! ⚰️⚰️⚰️") }
    }
}
