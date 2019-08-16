//
//  Game.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Character {

    let name: String
    var health: Int
    var weapon: Weapons
    var specialWeapon: specialWeapon
    var typeCharacters: String

    init(name: String, health: Int, weapon: Weapons, typeCharacters: String, specialWeapon: specialWeapon) {
        self.name = name
        self.health = health
        self.typeCharacters = typeCharacters
        self.weapon = weapon
        self.specialWeapon = specialWeapon
    }
    
    // Function which allow to presente available warrior
    func presenteCharacter() {
        print("Name:", self.name)
        print("Character:",self.typeCharacters)
        print("Weapon:", self.weapon.type)
        print("Health:", self.health)
        print("Damage:", self.weapon.damage)
        print("\n") }
    
    // Function which allow to presente their own warriors
    static func presenteTeam(team: Int)  {
        var numberChoice = 1
        if team == 1 {
            for character in team1 {
                print("\(numberChoice)"); character.presenteCharacter()
                numberChoice += 1
            }
        }
        else if team == 2 {
            var numberChoice = 1
            for character in team2 {
                print("\(numberChoice)"); character.presenteCharacter()
                numberChoice += 1
            }
        }
    }
    
    // Function which allow to check if name already exist
    static func nameAlreadyExist(nameWarrior: String, team: Int, cases: String) {
        var preCheckNameTeam = [String]()
        let player = Player(name: "")
        if preCheckNameTeam.contains(nameWarrior.uppercased()) {
            print("\n❌ Sorry, name already used, choose another one. ❌\n"); player.createTeam(team: team)
        } else {
            preCheckNameTeam.append(nameWarrior.uppercased())
            if team == 1 , cases == "1" {team1.append(Fighter(name: nameWarrior.uppercased())) }
            else if team == 1 , cases == "2" {team1.append(Colossus(name: nameWarrior.uppercased())) }
            else if team == 1 , cases == "3" {team1.append(Magus(name: nameWarrior.uppercased())) }
            else if team == 1 , cases == "4" {team1.append(Dwarf(name: nameWarrior.uppercased())) }
            else if team == 1 , cases == "5" {team1.append(Chemist(name: nameWarrior.uppercased())) }
            
            if team == 2, cases == "1" {team2.append(Fighter(name: nameWarrior.uppercased()))}
            else if team == 2 , cases == "2" {team2.append(Colossus(name: nameWarrior.uppercased())) }
            else if team == 2 , cases == "3" {team2.append(Magus(name: nameWarrior.uppercased())) }
            else if team == 2 , cases == "4" {team2.append(Dwarf(name: nameWarrior.uppercased())) }
            else if team == 2 , cases == "5" {team2.append(Chemist(name: nameWarrior.uppercased()))
            }
        }
    }

    // function "attack" allowing to get damage.
    func get(damage: Int) {
        self.health = self.health - damage
        if self.health < 0 { self.health = 0 }}
    
    // Function "attack" allowing to attack a character
    func attack(target: Character) {
        target.get(damage: self.weapon.damage)
        print("\n\(self.name) has attaked \(target.name) with \(self.weapon.damage) of damage. 💉 \(target.name) has \(target.health) health 💥\n")
        if target.health == 0 { print("\(target.name) is dead ! ⚰️⚰️⚰️") }
    }
    
    // Function which allow to presente available warrior
    static func availableCharacter() {
        let characterList = [Fighter(name: ""), Colossus(name: ""), Magus(name: ""), Dwarf(name: ""), Chemist(name: "")]
        var numberChoice = 1
        for character in characterList {
            print("\(numberChoice)"); character.presenteCharacter()
            numberChoice += 1
        }
    }
}
