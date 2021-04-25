//
//  Coordinator.swift
//  CoordinatorPattern
//
//  Created by Alley Pereira on 25/04/21.
//

import UIKit

enum Event {
    case buttonTapped
}

protocol Coordinator {
    var navigationController: UINavigationController? { get set }

    func eventOccurred(with type: Event)
    func start()
}

protocol Coordinating {
    var coordinator: Coordinator? { get set }
}
