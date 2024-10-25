//
//  TrandingReposCell.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 25/10/2024.
//

import Foundation
import UIKit
//import SkeletonView
//import Nuke

class TrandingReposCell: UITableViewCell {
    
    @IBOutlet weak var thumbPI: UIImageView!
    @IBOutlet weak var repoName: UILabel!
    @IBOutlet weak var createrName: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var languageView: UIView!
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var starLabel: UILabel!
    @IBOutlet weak var starImage: UIImageView!

    override func awakeFromNib() {

        super.awakeFromNib()
    }
    
    func updateUI(gitRepo : TrandingReposModel, isexapndable : Bool) {

        let urlString = "\(gitRepo.owner?.avatar_url ?? "")"
//        Nuke.loadImage(with: URL(string: urlString)!, into: self.thumbPI)
        self.repoName.text = gitRepo.name
        self.createrName.text = gitRepo.owner?.login
        self.descriptionLabel.isHidden = true
        self.languageView.isHidden = true
        if (isexapndable) {
            self.descriptionLabel.isHidden = false
            self.descriptionLabel.text = gitRepo.repoDescription
            self.languageView.isHidden = false
            self.languageLabel.text = gitRepo.language
            self.starLabel.text = "\(gitRepo.stargazers_count)"
        }
    }
    
    func showAnimation() {
//        thumbPI.showAnimatedSkeleton()
//        repoName.showAnimatedSkeleton()
//        createrName.showAnimatedSkeleton()
    }
    
    func hideAnimation() {
//        thumbPI.hideSkeleton()
//        repoName.hideSkeleton()
//        createrName.hideSkeleton()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
