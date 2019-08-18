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

    // Allowing o Start game
    func startGame() {
        for i in 1...2 {  print("Player \(i), enter your name:")
            if let choice = readLine() {
                if choice == "" { print("❌ Sorry you must enter a name. ❌ \n"); startGame() }
                else if choice.count < 3 { print("❌ Sorry enter a name more than 3 letters. ❌ \n"); startGame()}
                else {
                    let player = Player(name: choice)
                    game.players.append(Player(name: choice.uppercased()))
                    for _ in 1...3 { player.createTeam(team: player) }; print("\nThanks \(player.name.uppercased()), your team is completed !")
                }
            }
        }

        // Allowing to loop with each players and print player's team
            for thePlayer in players {
                print("\(thePlayer.name), choose a warrior to fight:\n")
                for (index, character) in thePlayer.myTeam.enumerated() {
                    if character.health == 0 {
                        thePlayer.myTeam.remove(at: index)
                        checkHealthCharacter() }}
               thePlayer.fight(team: thePlayer)
                for character in thePlayer.myTeam {
                    if character.typeCharacters == Chemist.typeCharacters {
                        character.weapon.damage = Int.random(in: 5...60) }}
                print ("You've done \(loop) loop(s) ⏱")
                loop += 1
            }
       }
    // Function which allow to know the winner
    func checkHealthCharacter() {
        if player.myTeam.count <= 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[0].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) loop(s) ⏱")
            exit(9) }
        else if player.myTeam.count <= 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[1].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) ⏱")
            exit(9)
        }
    }
}
