//
//  TrandingReposWireframe.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 24/10/2024.
//

import Foundation
import UIKit

let TrandingReposViewControllerIdentifier = "TrandingReposViewController"

class TrandingReposWireframe {
    var trandingReposPresenter: TrandingReposPresenter?
    var rootWireframe: RootWireframe?
    var trandingReposViewController: TrandingReposViewController?
    
    func presentTrandingRaposInterfaceFromWindow(window: UIWindow) {
        let viewController = trandingRaposViewControllerFromStoryboard()
        viewController.eventHandler = trandingReposPresenter
        trandingReposViewController = viewController
        trandingReposPresenter?.userInterface = viewController
        rootWireframe?.showRootViewController(viewController: viewController, inWindow: window)
    }
    
    func trandingRaposViewControllerFromStoryboard() -> TrandingReposViewController {
        let storyBoard = mainStoryboard()
        let viewController = storyBoard.instantiateViewController(withIdentifier: TrandingReposViewControllerIdentifier) as! TrandingReposViewController
        return viewController
    }
    
    func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
