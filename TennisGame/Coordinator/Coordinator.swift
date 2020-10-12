//
//  Coordinator.swift
//  TennisGame
//
//  Created by Bogdan Iusco on 12/10/2020.
//  Copyright © 2020 CoolDevs. All rights reserved.
//

import UIKit

class Coordinator {
    let navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        let firstVC = UIStoryboard().instantiateInitialViewController() as! ViewController
        firstVC.coordinator = self
        navigationController.viewControllers = [firstVC]
    }

    func showFinalScore() {
        let secondVC = UIStoryboard().instantiateViewController(identifier: "ScoreVC") as! ViewController
        navigationController.pushViewController(secondVC, animated: true)
    }
}
