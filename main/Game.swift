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

    // Generate 2 Players.
    func startGame() {
        repeat {
            generateTeam()
        } while (players.count < 2)
        letsFight()
    }

    // Allowing to generate team.
    func generateTeam() {
        print("Hello player \(players.count + 1) enter your name:")
        let choice = setNamePlayer()
        let player = Player(name: choice.uppercased())
        repeat {
            player.createTeam(team: player)
        } while(player.myTeam.count < 3)
        self.players.append(player)
        print("\nThanks \(player.name.uppercased()), your team is completed !\n")
    }

    // Allowing to return this function if condition is true
    private func setNamePlayer() -> String {
        if let choice = readLine() {
            if choice.count < 3 { print("❌ Sorry enter a name more than 3 letters. ❌ \n")
                return setNamePlayer()
            }
            return choice
        }
        return setNamePlayer()
    }

    // Allowing to loop with each team.
    func letsFight() {
        let attackingPlayer = players[0]
        let defendingPlayer = players[1]
        while attackingPlayer.myTeam.count > 0 && defendingPlayer.myTeam.count > 0 {
            print("\(attackingPlayer.name.uppercased()), choose a warrior to fight:\n")
            attackingPlayer.fight(against: defendingPlayer)
            for character in attackingPlayer.myTeam {
                if character.typeCharacters == Chemist.typeCharacters {
                    character.weapon.damage = Int.random(in: 5...60)
                }
            }

            // This condition allows to play the second player if he's alive
            if defendingPlayer.myTeam.count > 0 {
                print("\(defendingPlayer.name), choose a warrior to fight:\n")
                defendingPlayer.fight(against: attackingPlayer)
            }
            loop += 1
        }
    }

    // Function which allow to know the winner
    func checkHealthCharacter() {
        if players[0].myTeam.count == 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[1].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) loop(s) ⏱")
        }
        else if players[1].myTeam.count == 0 {
            print("\n✨✨✨ Congratulation 👑 \(players[0].name), you are the winner ! ✨✨✨\nTotal loops: \(loop) ⏱")
        }
    }
}
