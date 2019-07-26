//
//  Game.swift
//  main
//
//  Created by Steve Bernard on 02/06/2019.
//  Copyright © 2019 Steve Bernard. All rights reserved.
//

import Foundation

var teamNumber = 1
class Game {
    var playerNumber = 1
    var loop = 0
    func starGame() {
        
        for _ in 1...2 { player.setName()
            for _ in 1...3 { player.createTeam(team: teamNumber) }; print("\nThanks, your team is completed !")
            teamNumber += 1 }
        
        while player1[0].isDead == false || player1[1].isDead == false || player1[2].isDead == false || player2[0].isDead == false || player2[1].isDead == false || player2[2].isDead == false {
            for _ in players {
                print("\(players[0].name), choose a warrior to fight \(players[1].name):\n")
                players[0].fight(team: 1)
                drug = 0
                for character in team1 {
                    if character.typeCharacters == Chemist.typeCharacters {
                        character.weapon.damage = Int.random(in: 5...60) }}
                checkHealthCharacter()
                print ("You've done \(loop) loop(s) ⏱")
                loop += 1
                print("\n\(players[1].name), choose a warrior to fight \(players[0].name):\n")
                players[1].fight(team: 2)
                drug = 0
                for character in team2 {
                    if character.typeCharacters == Chemist.typeCharacters {
                        character.weapon.damage = Int.random(in: 5...60) }}
                checkHealthCharacter()
                print("You've done \(loop) loop(s) ⏱")
            }
        }
    }
// Function which allow to know the winner
    func checkHealthCharacter() {

        if team2[0].isDead == true && team2[1].isDead == true && team2[2].isDead == true {
            print("\n✨✨✨ Congratulation 👑 \(players[0].name), you are the winner ! ✨✨✨\n Total loops: \(loop) loop(s) ⏱")
            exit(9) }
        else if team1[0].isDead == true && team1[1].isDead == true && team1[2].isDead == true {
            print("\n✨✨✨ Congratulation 👑 \(players[1].name), you are the winner ! ✨✨✨\n Total loops: \(loop) ⏱")
            exit(9)
        }
    }
}

