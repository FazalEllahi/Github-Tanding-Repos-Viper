//
//  TrandingReposInteractorIO.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 25/10/2024.
//

import Foundation

protocol TrandingReposInteractorInput {
    func loadTrandingRaposList()
}

protocol TrandingReposInteractorOutput {
    func gotTrandingRaposList()
}
