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
        updateScore(scoringPlayer: scoringPlayer)
    }

    private func updateScore(scoringPlayer: Player) {
        let  newRawScore = scoringPlayer.score.rawValue + 1
        scoringPlayer.score = Score(rawValue: newRawScore) ?? .love
    }
}
