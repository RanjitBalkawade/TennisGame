//
//  ViewModel.swift
//  TennisGame
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import Foundation

class ViewModel {
    var playe1Score: String {
        tennisGame.player1.score.scoreDescription
    }

    var playe2Score: String {
        tennisGame.player2.score.scoreDescription
    }

    var callback: (() -> Void)?

    private let tennisGame: TennisGame

    init(tennisGame: TennisGame) {
        self.tennisGame = tennisGame
    }

    func player1Scored() {
        tennisGame.play(scoringPlayer: tennisGame.player1)
        callback?()
    }

    func player2Scored() {
        tennisGame.play(scoringPlayer: tennisGame.player2)
        callback?()
    }
}
