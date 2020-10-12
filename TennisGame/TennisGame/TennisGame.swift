//
//  TennisGame.swift
//  TennisGame
//
//  Created by Ranjeet Balkawade on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import Foundation

class TennisGame {
    let player1: Player
    let player2: Player

    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }

    func play(scoringPlayer: Player) {
        scoringPlayer.score = Score.fifteen
    }
}
