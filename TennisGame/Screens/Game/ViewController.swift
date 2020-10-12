//
//  ViewController.swift
//  TennisGame
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var viewModel: ViewModel?
    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()

        let game = TennisGame(player1: Player(), player2: Player())
        viewModel = ViewModel(tennisGame: game)
        viewModel?.callback = { [weak self] in
            self?.updateView()
        }
    }

    @IBAction func player1Scored() {
        viewModel?.player1Scored()
    }

    @IBAction func player2Scored() {
        viewModel?.player2Scored()
    }

    @IBAction func showFinalScore() {
        
    }

    private func updateView() {

    }
}

