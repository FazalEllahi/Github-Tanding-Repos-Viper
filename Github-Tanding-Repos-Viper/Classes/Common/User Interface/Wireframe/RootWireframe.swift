//
//  RootWireframe.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 24/10/2024.
//

import Foundation
import UIKit

class RootWireframe {
    func showRootViewController(viewController: UIViewController, inWindow: UIWindow) {
        let navigationController = navigationControllerFromWindow(window: inWindow)
        navigationController.viewControllers = [viewController]
    }
    
    func navigationControllerFromWindow(window: UIWindow) -> UINavigationController {
        let navigationController = window.rootViewController as! UINavigationController
        return navigationController
    }
}
