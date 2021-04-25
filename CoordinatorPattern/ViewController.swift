//
//  ViewController.swift
//  CoordinatorPattern
//
//  Created by Alley Pereira on 25/04/21.
//

import UIKit

class ViewController: UIViewController, Coordinating {
    var coordinator: Coordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        title = "Home"

        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 55))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemGreen
        button.setTitle("Tap me", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)

    }
    @objc func didTapButton() {
        coordinator?.eventOccurred(with: .buttonTapped)

    }    
}

