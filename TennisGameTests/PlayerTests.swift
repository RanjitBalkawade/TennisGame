//
//  PlayerTests.swift
//  TennisGameTests
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import XCTest
@testable import TennisGame

class PlayerTests: XCTestCase {

    var sut: Player!

    override func setUp() {
        sut = Player()
    }

    override func tearDown() {
        sut = nil
    }

    func test_playerExists() {
        XCTAssertNotNil(sut)
    }
}
