//
//  CustomNavigationController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 02.07.2021.
//

import UIKit

class CustomNavigationController: UINavigationController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        delegate = self
       
    }
    func navigationController(
        _ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        switch operation {
        case .pop:
            return PopAnimator()
        case .push:
            return PushAnimator()
        default:
            return nil
        }
    }

}
