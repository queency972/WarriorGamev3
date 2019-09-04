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
        self.availableCharacter()
        if let choice = readLine() {
            switch choice {
            case "1": print("\(Fighter.description) Please enter the name of your \(Fighter.typeCharacters):")
            self.createCharacter(type: "Fighter")
            case "2": print("\(Colossus.description) Please enter the name of your \(Colossus.typeCharacters):")
            self.createCharacter(type: "Colossus")
            case "3": print("\(Magus.description) Please enter the name of your \(Magus.typeCharacters):")
            self.createCharacter(type: "Magus")
            case "4": print("\(Dwarf.description) Please enter the name of your \(Dwarf.typeCharacters):")
            self.createCharacter(type: "Dwarf")
            case "5": print("\(Chemist.description) Please enter the name of your \(Chemist.typeCharacters):")
            self.createCharacter(type: "Chemist")
            default: print("⁉️ Enter a value between 1 to 5.\n"); self.createTeam(team: team)
            }
        }
    }

    // Function which allow to fight
    func fight(against team: Player) {
        for (index, character) in self.myTeam.enumerated() {
            print ("\(index)\nWarriors: \(character.name)\nType: \(character.typeCharacters)\nHealth: \(character.health)\n")
        }
        if let myCharacter = readLine() {
            if let choice = Int(myCharacter) {
                if choice <= self.myTeam.count {
                    let selectedCharacter = self.myTeam[choice]
                    print("\n✅ You've chosen \(selectedCharacter.typeCharacters)")
                    if let magus = selectedCharacter as? Magus {
                        magus.care(team: self)
                    }
                    else {
                        let tresorNumber = 3
                        if Int.random(in: 0...3) == tresorNumber { print("💉💉💉 Your character found a special weapon and dropped his first one and now causes \(selectedCharacter.weapon.damage) due to drug effets 💉💉💉")
                            selectedCharacter.weapon = Drug()
                        }
                        print("Now, choose a warrior to fight ! 🥊🥊🥊\n")
                        for (index, character) in team.myTeam.enumerated() {
                            print ("\(index)\nWarriors: \(character.name)\nType: \(character.typeCharacters)\nHealth: \(character.health)\n")
                        }
                        if let target = readLine() {
                            if let targetChoice = Int(target) {
                                if targetChoice <= team.myTeam.count {
                                    let selectedTarget = team.myTeam[targetChoice]
                                    print("✅ You've chosen \(selectedTarget.typeCharacters)\n")
                                }
                                self.myTeam[Int(myCharacter)!].attack(target: team.myTeam[targetChoice])
                                for (index, character) in team.myTeam.enumerated() {
                                    if character.health == 0 {
                                        team.myTeam.remove(at: index)
                                        game.checkHealthCharacter()
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Function which allow to presente available warrior
    private func availableCharacter() {
        let characterList = [Fighter(name: ""), Colossus(name: ""), Magus(name: ""), Dwarf(name: ""), Chemist(name: "")]
        var numberChoice = 1
        for character in characterList {
            print("\(numberChoice)"); character.presenteCharacter()
            numberChoice += 1
        }
    }

    private func createCharacter(type: String) {
        if let nameWarrior = readLine() {
            let nameExist = Character.nameAlreadyExist(nameWarrior: nameWarrior.uppercased())
            if !nameExist {
                Character.preCheckNameTeam.append(nameWarrior.uppercased())
                switch type {
                case "Fighter":
                    self.myTeam.append(Fighter(name: nameWarrior.uppercased()))
                case "Colossus":
                    self.myTeam.append(Colossus(name: nameWarrior.uppercased()))
                case "Magus":
                    self.myTeam.append(Magus(name: nameWarrior.uppercased()))
                case "Dwarf":
                    self.myTeam.append(Dwarf(name: nameWarrior.uppercased()))
                case "Chemist":
                    self.myTeam.append(Chemist(name: nameWarrior.uppercased()))
                default: print("An error occured")
                }
            }
        }
    }
}
