//
//  TrandingReposPresenter.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 24/10/2024.
//

import Foundation

class TrandingReposPresenter : TrandingReposInteractorOutput , TrandingReposModuleInterface {
    
    var trandingReposInteractor : TrandingReposInteractorInput?
    var wierframe : TrandingReposWireframe?
    var userInterface : TrandingReposViewInterface?
    
    //MARK: TrandingRaposInteractorOutput
    
    func gotTrandingRaposList() {
        
    }
    
    //MARK: TrandingRaposModuleInterface
    
    func updateView() {
        
    }
    
    func loadMore() {
        
    }
    
}
