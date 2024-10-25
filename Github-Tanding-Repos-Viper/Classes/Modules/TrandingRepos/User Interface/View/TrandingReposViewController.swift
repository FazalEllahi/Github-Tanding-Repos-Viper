//
//  TrandingRaposViewController.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 24/10/2024.
//

import Foundation
import UIKit
import Lottie

class TrandingReposViewController : UIViewController, TrandingReposViewInterface {
    
    var eventHandler: TrandingReposModuleInterface?
    @IBOutlet weak var gitRepoTableView: UITableView!
    @IBOutlet weak var failedDataView: UIView!
    @IBOutlet weak var lottieAnimation : LottieAnimationView!
    @IBOutlet weak var retryButton: UIButton!
    
    //MARK: TrandingReposViewInterface
    func showNoContentMessage() {
        
    }
    
    func showTrandingRaposDisplayData() {
        
    }
    
    func reloadData() {
        
    }
    
    func showActivityIndicator() {
        
    }
    
    func hideActivityIndicator() {
        
    }
}


extension TrandingReposViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0//self.isShowShimmer == true ? 10 : (self.viewModel?.gitRepos?.value.count ?? 0)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.reloadRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
    }
}
 
