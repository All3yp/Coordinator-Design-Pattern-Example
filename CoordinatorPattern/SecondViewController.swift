//
//  SecondViewController.swift
//  CoordinatorPattern
//
//  Created by Alley Pereira on 25/04/21.
//

import UIKit

class SecondViewController: UIViewController, Coordinating {

    var coordinator: Coordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        view.backgroundColor = .systemBlue
    }
}
