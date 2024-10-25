//
//  TrandingReposViewInterface.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 25/10/2024.
//

import Foundation

protocol TrandingReposViewInterface {
    func showNoContentMessage()
    
    func showTrandingRaposDisplayData()
    func reloadData()
    
    func showActivityIndicator()
    func hideActivityIndicator()
}
