//
//  TrandingReposModel.swift
//  Github-Tanding-Rapos-Viper
//
//  Created by FazalEllahi on 25/10/2024.
//

import Foundation

struct RepositoryList : Codable {
    let items : [TrandingReposModel]
    
    private enum CodingKeys: String, CodingKey {
        case items = "items"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        items = try values.decodeIfPresent([TrandingReposModel].self, forKey: .items) ?? [TrandingReposModel]()
    }
}

struct TrandingReposModel : Codable {
    
    let id : Int
    let name: String
    let repoDescription: String
    let url: String
    let language: String
    let stargazers_count: Int
    let owner: OwnerModel?

    init(id : Int, name : String, desc : String, url : String, language : String, star : Int, ownerName : String, ownerAvatar : String) {
        self.id = id
        self.name = name
        self.repoDescription = desc
        self.url = url
        self.language = language
        self.stargazers_count = star
        self.owner = OwnerModel(login: ownerName, avatar: ownerAvatar)
    }
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case repoDescription = "description"
        case url = "url"
        case language = "language"
        case stargazers_count = "stargazers_count"
        case owner = "owner"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id) ?? 0
        name = try values.decodeIfPresent(String.self, forKey: .name) ?? ""
        repoDescription = try values.decodeIfPresent(String.self, forKey: .repoDescription) ?? ""
        url = try values.decodeIfPresent(String.self, forKey: .url) ?? ""
        language = try values.decodeIfPresent(String.self, forKey: .language) ?? ""
        stargazers_count = try values.decodeIfPresent(Int.self, forKey: .stargazers_count) ?? 0
        owner = try values.decodeIfPresent(OwnerModel.self, forKey: .owner)
    }
}

struct OwnerModel: Codable {
    let login: String
    let avatar_url: String

    private enum CodingKeys: String, CodingKey {
        case login = "login"
        case avatar_url = "avatar_url"
    }
    
    init(login : String, avatar : String) {
        self.login = login
        self.avatar_url = avatar
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        login = try values.decodeIfPresent(String.self, forKey: .login) ?? ""
        avatar_url = try values.decodeIfPresent(String.self, forKey: .avatar_url) ?? ""
    }
}
