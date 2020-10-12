//
//  Player.swift
//  TennisGame
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import Foundation

enum Score: Int {
    case love
    case fifteen
    case thirty
    case fourty
}

class Player {
    var score: Score = .love
}
