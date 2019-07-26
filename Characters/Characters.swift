//
//  Game.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

var preCheckNameTeam = [String]()
var team1 = [Character]()
var team2 = [Character]()
let myTeam = Player(name: "")
var player1 = team1
var player2 = team2
let player = Player(name: "")
var players = [Player]()
var myTeamNumber = Game()
var characterList = [Fighter(name: ""), Colossus(name: ""), Magus(name: ""), Dwarf(name: ""), Chemist(name: "")]

class Character {

    let name: String
    var health: Int
    var weapon: Weapons
    var specialWeapon: specialWeapon
    var typeCharacters: String
    var isDead: Bool
    
    init(name: String, health: Int, weapon: Weapons, typeCharacters: String, specialWeapon: specialWeapon, isDead: Bool) {
        self.name = name
        self.health = health
        self.typeCharacters = typeCharacters
        self.weapon = weapon
        self.specialWeapon = specialWeapon
        self.isDead = isDead
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
        if preCheckNameTeam.contains(nameWarrior.uppercased()) {
            print("\n❌ Sorry, name already used, choose another one. ❌\n"); myTeam.createTeam(team: teamNumber)
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
        if drug == 1 {
            target.get(damage: self.specialWeapon.damage)
            print("\n\(self.name) has attaked \(target.name) with \(self.specialWeapon.damage) of damage. 💉 \(target.name) has \(target.health) health 💥\n")
            if target.health == 0 { print("\(target.name) is dead ! ⚰️⚰️⚰️"); target.weapon.damage = 0; target.isDead = true }}
        else {
            target.get(damage: self.weapon.damage)
            print("\n\(self.name) has attaked \(target.name) with \(self.weapon.damage) of damage. \(target.name) has \(target.health) health 💥\n")
            if target.health == 0 { print("\(target.name) is dead ! ⚰️⚰️⚰️"); target.weapon.damage = 0; target.isDead = true
            }
        }
    }
    
    // Function which allow to presente available warrior
    static func availableCharacter() {
        var numberChoice = 1
        for character in characterList {
            print("\(numberChoice)"); character.presenteCharacter()
            numberChoice += 1
        }
    }
}
