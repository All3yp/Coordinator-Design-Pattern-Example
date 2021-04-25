//
//  MainCoordinator.swift
//  CoordinatorPattern
//
//  Created by Alley Pereira on 25/04/21.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var navigationController: UINavigationController?

    func eventOccurred(with type: Event) {
        switch type {
        case .buttonTapped:
            var vc: UIViewController & Coordinating =  SecondViewController()
            vc.coordinator = self

            navigationController?.pushViewController(vc, animated: true)        }
    }

    func start() {
        var vc: UIViewController & Coordinating = ViewController()
        vc.coordinator = self
        navigationController?.setViewControllers([vc], animated: false)
    }
}
