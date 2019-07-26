//
//  Players.swift
//  mainTest
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//
import Foundation

var drug = 0

// Class "Players" to determninate 2 players in the game.
class Player {
    var myPlayer = Game()
    var name: String
    init(name: String) {
        self.name = name }
    
    // Function which allow to set players name
    func setName() {
        print("\nPlayer \(myPlayer.playerNumber), Enter your name:")
        if let choice = readLine() {
            if choice == "" { print("❌ Sorry you must enter a name. ❌ \n"); setName() }
            else if choice.count < 3 { print("❌ Sorry enter a name more than 3 letters. ❌ \n"); setName()}
            else { players.append(Player(name: choice.uppercased()))
                myPlayer.playerNumber += 1
            }
        }
    }
    
    // Function which allow to get player choice
    func input() -> Int {
        let choice = readLine();
        return Int(choice!)! }
    
    // Function which allow to create team for each player
    func createTeam(team: Int) {
        print("\nTeam Number: \(teamNumber)")
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
        var userChoice: Int
        if team == 1 { Character.presenteTeam(team: 1) }
        else { Character.presenteTeam(team: 2) }
        if let choice = readLine() {
            switch choice {
            case "1":
                if team == 1 { print("\nOK ✅, \(team1[0].typeCharacters) valided !"); Character.tresor()
                    if team1[0].weapon.givePoint == true { Magus.careTeam(team: team) }}
                else {
                    print("\nOK ✅, \(team2[0].typeCharacters) valided !"); Character.tresor()
                    if team2[0].weapon.givePoint == true { Magus.careTeam(team: team) }}
                repeat {
                    if team == 1 { print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 2)}
                    else {
                        print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 1) }
                    userChoice = input()
                } while userChoice != 1 && userChoice != 2 && userChoice != 3
                if team == 1 { switch userChoice {
                case 1: team1[0].attack(target: team2[0])
                case 2: team1[0].attack(target: team2[1])
                case 3: team1[0].attack(target: team2[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
                if team == 2 { switch userChoice {
                case 1: team2[0].attack(target: team1[0])
                case 2: team2[0].attack(target: team1[1])
                case 3: team2[0].attack(target: team1[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
            case "2":
                if team == 1 { print("\nOK ✅, \(team1[1].typeCharacters) valided !"); Character.tresor()
                    if team1[1].weapon.givePoint == true { Magus.careTeam(team: team) }}
                else {
                    print("\nOK ✅, \(team2[1].typeCharacters) valided !"); Character.tresor()
                    if team2[1].weapon.givePoint == true { Magus.careTeam(team: team) }}
                repeat {
                    if team == 1 { print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 2)}
                    else {
                        print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 1) }
                    userChoice = input()
                } while userChoice != 1 && userChoice != 2 && userChoice != 3
                if team == 1 { switch userChoice {
                case 1: team1[1].attack(target: team2[0])
                case 2: team1[1].attack(target: team2[1])
                case 3: team1[1].attack(target: team2[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
                if team == 2 { switch userChoice {
                case 1: team2[1].attack(target: team1[0])
                case 2: team2[1].attack(target: team1[1])
                case 3: team2[1].attack(target: team1[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
            case "3":
                if team == 1 { print("\nOK ✅, \(team1[2].typeCharacters) valided !"); Character.tresor()
                    if team1[2].weapon.givePoint == true { Magus.careTeam(team: 1) }}
                else {
                    print("\nOK ✅, \(team2[2].typeCharacters) valied !"); Character.tresor()
                    if team2[2].weapon.givePoint == true { Magus.careTeam(team: 2) }}
                repeat {
                    if team == 1 { print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 2)}
                    else {
                        print("Which warrior you want fight ? 🥊🥊🥊\n")
                        Character.presenteTeam(team: 1) }
                    userChoice = input()
                } while userChoice != 1 && userChoice != 2 && userChoice != 3
                if team == 1 { switch userChoice {
                case 1: team1[2].attack(target: team2[0])
                case 2: team1[2].attack(target: team2[1])
                case 3: team1[2].attack(target: team2[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
                if team == 2 { switch userChoice {
                case 1: team2[2].attack(target: team1[0])
                case 2: team2[2].attack(target: team1[1])
                case 3: team2[2].attack(target: team1[2])
                default: print("⁉️ Please, enter a value between 1 to 3.\n") }}
            default: print("⁉️ Please, enter a value between 1 to 3.\n")
            }
        }
    }
}
