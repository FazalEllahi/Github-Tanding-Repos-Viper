//
//  TrandingReposInteractor.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 25/10/2024.
//

import Foundation

class TrandingReposInteractor : TrandingReposInteractorInput {
    
    var output: TrandingReposInteractorOutput?
    let dataManager: TrandingReposManager!
    
    init(manager: TrandingReposManager) {
        dataManager = manager
    }
    
    //MARK: TrandingReposInteractorInput
    
    func loadTrandingRaposList() {
    }
}
