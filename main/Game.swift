//
//  Game.swift
//  main
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

class Game {
    var players = [Player]()
    var loop = 0

    func startGame() {
        let player = Player(name: "")
        for i in 1...2 { player.setName()
            for _ in 1...3 { player.createTeam(team: i) }; print("\nThanks, your team is completed !")
        }
        
        while team2.count > 0 || team1.count > 0  {
            for _ in players {
                print("\(players[0].name), choose a warrior to fight \(players[1].name):\n")
                for (index, character) in team1.enumerated() {
                    if character.health == 0 {
                        team1.remove(at: index)
                        checkHealthCharacter() }}
                players[0].fight(team: 1)
                for character in team1 {
                    if character.typeCharacters == Chemist.typeCharacters {
                        character.weapon.damage = Int.random(in: 5...60) }}
                print ("You've done \(loop) loop(s) ⏱")
                loop += 1
                print("\(players[1].name), choose a warrior to fight \(players[0].name):\n")
                for (index, character) in team2.enumerated() {
                    if character.health == 0 {
                        team2.remove(at: index)
                        checkHealthCharacter() }}
                players[1].fight(team: 2)
                for character in team2 {
                    if character.typeCharacters == Chemist.typeCharacters {
                        character.weapon.damage = Int.random(in: 5...60) }}
                print("You've done \(loop) loop(s) ⏱")
            }
        }
    }
    // Function which allow to know the winner
    func checkHealthCharacter() {
        if team2.count <= 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[0].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) loop(s) ⏱")
            exit(9) }
        else if team1.count <= 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[1].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) ⏱")
            exit(9)
        }
    }
}

