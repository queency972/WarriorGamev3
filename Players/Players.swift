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
            if Int(myCharacter)! <= self.myTeam.count {
                print("\n✅ You've chosen \(self.myTeam[Int(myCharacter)!].typeCharacters)")
                if self.myTeam[Int(myCharacter)!].typeCharacters == "Magus" {
                    Magus.self.care(team: self, character: self.myTeam[Int(myCharacter)!])
                }
                else {
                    let tresorNumber = 3
                    if Int.random(in: 0...8) == tresorNumber { print("💉💉💉 \(Drug.description) 💉💉💉 ")
                        self.myTeam[Int(myCharacter)!].weapon.damage = self.myTeam[Int(myCharacter)!].specialWeapon.damage
                    }
                    print("Now, choose a warrior to fight ! 🥊🥊🥊\n")
                    for (index, character) in team.myTeam.enumerated() {
                        print ("\(index)\nWarriors: \(character.name)\nType: \(character.typeCharacters)\nHealth: \(character.health)\n")
                    }
                    if let target = readLine() {
                        if Int(target)! <= team.myTeam.count {
                            print("✅ You've chosen \(team.myTeam[Int(target)!].typeCharacters)\n")
                        }
                        self.myTeam[Int(myCharacter)!].attack(target: team.myTeam[Int(target)!])
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
