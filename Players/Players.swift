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
    var myTeam = [Character]()
    init(name: String) {
        self.name = name }


    // Function which allow to create team for each player
    func createTeam(team: Player) {
        print("\n\(team.name.uppercased())'s team:\n")
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
    func fight(team: Player) {
            for (index, character) in team.myTeam.enumerated() {
                print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n")}
            if let myCharacter = readLine() {
                if Int(myCharacter)! <= team.myTeam.count {
                    print("\n✅ You've chosen \(team.myTeam[Int(myCharacter)!].typeCharacters)")
                    if team.myTeam[Int(myCharacter)!].weapon.givePoint == true { Magus.careTeam(team: team) }
                    let tresorNumber = 3
                    if Int.random(in: 0...8) == tresorNumber {team.myTeam[Int(myCharacter)!].weapon.damage = team.myTeam[Int(myCharacter)!].specialWeapon.damage }
                    print("Now, choose a warrior to fight ! 🥊🥊🥊\n")
                }
                for (index, character) in team.myTeam.enumerated() {
                    print ("\(index)\nWarriors: \(character.name)\nHealth: \(character.health)\n") }
                if let p2Target = readLine() {
                    if Int(p2Target)! <= team.myTeam.count{
                        print("✅ You've chosen \(team.myTeam[Int(p2Target)!].typeCharacters)\n") }
                    team.myTeam[Int(myCharacter)!].attack(target: team.myTeam[Int(p2Target)!]) }}}}
