//
//  TennisGameTests.swift
//  TennisGameTests
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import XCTest
@testable import TennisGame

class TennisGameTests: XCTestCase {

    var sut: TennisGame!
    var player1: Player!
    var player2: Player!

    override func setUp() {
        self.player1 = Player()
        self.player2 = Player()
        self.sut = TennisGame(player1: self.player1, player2: self.player2)
    }

    override func tearDown() {
        self.sut = nil
    }

    func test_TennisGameExists() {
        XCTAssertNotNil(self.sut)
    }

    func test_gameHasTwoPlayers() {
        XCTAssertNotNil(sut.player1)
        XCTAssertNotNil(sut.player2)
    }

    func test_gameStartedWithScoreLoveLove() {
        XCTAssertEqual(sut.player1.score, .love)
        XCTAssertEqual(sut.player2.score, .love)
    }

    func test_ifPlayer1ScoresfirstPoint_scoreIsFifteen_love() {
        self.sut.play(scoringPlayer: self.player1)
        XCTAssertEqual(sut.player1.score, .fifteen)
        XCTAssertEqual(sut.player2.score, .love)
    }

    func test_ifPlayer1ScoresSecondPoint_scoreIsThirty_love() {
        sut.play(scoringPlayer: player1)
        sut.play(scoringPlayer: player1)
        XCTAssertEqual(sut.player1.score, .thirty)
        XCTAssertEqual(sut.player2.score, .love)
    }
}
