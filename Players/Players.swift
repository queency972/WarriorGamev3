//
//  Players.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//
import Foundation

// Class "Players" to determninate 2 players in the game.
class Player {
    var name: String
    init(name: String) {
        self.name = name }
    
    // Function which allow to set players name
    func setName() {
        print("Player, enter your name:")
        if let choice = readLine() {
            if choice == "" { print("❌ Sorry you must enter a name. ❌ \n"); setName() }
            else if choice.count < 3 { print("❌ Sorry enter a name more than 3 letters. ❌ \n"); setName()}
            else { game.players.append(Player(name: choice.uppercased()))
            }
        }
    }

    // Function which allow to create team for each player
    func createTeam(team: Int) {
        print("\nTeam Number \(team):\n")
        Character.availableCharacter()
        if let choice = readLine() {
            switch choice {
            case "1": print("\(Fighter.description), please enter the name of your \(Fighter.typeCharacters):")
            if let nameWarrior = readLine() {
                Character.nameAlreadyExist(nameWarrior: nameWarrior, team: team, cases: choice) }
            case "2": print("\(Colossus.description), please enter the name of your \(Colossus.typeCharacters):")
            if let nameWarrior = readLine() {
                Character.nameAlreadyExist(nameWarrior: nameWarrior, team: team, cases: choice) }
            case "3": print("\(Magus.description) please enter the name of your \(Magus.typeCharacters):")
            if let nameWarrior = readLine() {
                Character.nameAlreadyExist(nameWarrior: nameWarrior, team: team, cases: choice) }
            case "4": print("\(Dwarf.description) please, enter the name of your \(Dwarf.typeCharacters):")
            if let nameWarrior = readLine() {
                Character.nameAlreadyExist(nameWarrior: nameWarrior, team: team, cases: choice) }
            case "5": print("\(Chemist.description) please, enter the name of your \(Chemist.typeCharacters):")
            if let nameWarrior = readLine() {
                Character.nameAlreadyExist(nameWarrior: nameWarrior, team: team, cases: choice) }
            default: print("⁉️ Enter a value between 1 to 4.\n"); createTeam(team: team)
            }
        }
    }
    
    // Function which allow to fight
    func fight(team: Int) {
        if team == 1 {
            for (index, character) in team1.enumerated() {
                print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n")}
            if let myCharacter = readLine() {
                if Int(myCharacter)! <= team1.count {
                    print("\n✅ You've chosen \(team1[Int(myCharacter)!].typeCharacters)")
                    if team1[Int(myCharacter)!].weapon.givePoint == true { Magus.careTeam(team: 1) }
                    let tresorNumber = 3
                    if Int.random(in: 0...8) == tresorNumber {team1[Int(myCharacter)!].weapon.damage = team1[Int(myCharacter)!].specialWeapon.damage }
                    print("Now, choose a warrior to fight ! 🥊🥊🥊\n")
                }
                for (index, character) in team2.enumerated() {
                    print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n") }
                if let p2Target = readLine() {
                    if Int(p2Target)! <= team2.count{
                        print("✅ You've chosen \(team2[Int(p2Target)!].typeCharacters)\n") }
                    team1[Int(myCharacter)!].attack(target: team2[Int(p2Target)!]) }}}
        else {
            for (index, character) in team2.enumerated() {
                if character.health == 0 {
                    team2.remove(at: index)
                }
                print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n")}
            if let myCharacter = readLine() {
                if Int(myCharacter)! <= team2.count {
                    print("\n✅ You've chosen \(team2[Int(myCharacter)!].typeCharacters)")
                    if team2[Int(myCharacter)!].weapon.givePoint == true { Magus.careTeam(team: 2) }
                    let tresorNumber = 3
                    if Int.random(in: 0...8) == tresorNumber {team2[Int(myCharacter)!].weapon.damage = team2[Int(myCharacter)!].specialWeapon.damage }
                    print("Now, choose a warrior to fight ! 🥊🥊🥊\n")
                }
                for (index, character) in team1.enumerated() {
                    print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n")}
                if let p1Target = readLine() {
                    if Int(p1Target)! <= team1.count{
                        print("✅ You've chosen \(team1[Int(p1Target)!].typeCharacters)\n") }
                    team2[Int(myCharacter)!].attack(target: team1[Int(p1Target)!]) }}}}}
