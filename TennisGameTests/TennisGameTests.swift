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

    override func setUp() {
        self.sut = TennisGame()
    }

    override func tearDown() {
        self.sut = nil
    }

    func test_TennisGameExists() {
        XCTAssertNotNil(self.sut)
    }

}
