//
//  AppDependencies.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 24/10/2024.
//

import Foundation
import UIKit

class AppDependencies {
    var trandingReposWireframe = TrandingReposWireframe()
    
    init() {
        configureDependencies()
    }
    
    func configureDependencies() {
        let rootWireframe = RootWireframe()
        
        let trandingReposPresenter = TrandingReposPresenter()
        let trandingReposDataManager = TrandingReposManager()
        let trandingReposInteractor = TrandingReposInteractor(manager: trandingReposDataManager)
        
        trandingReposInteractor.output = trandingReposPresenter
        
        trandingReposPresenter.trandingReposInteractor = trandingReposInteractor
        trandingReposPresenter.wierframe = trandingReposWireframe
        
        trandingReposWireframe.rootWireframe = rootWireframe
        trandingReposWireframe.trandingReposPresenter = trandingReposPresenter
    }
    
    func installRootViewControllerInto(window: UIWindow) {
        trandingReposWireframe.presentTrandingRaposInterfaceFromWindow(window: window)
    }
}
