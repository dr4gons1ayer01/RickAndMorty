//
//  RMEpisode.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 30.05.2024.
//

import Foundation

// MARK: - RMEpisode
struct RMEpisode: Codable {
    let id: Int
    let name: String
    let airDate: String     //air_date
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}


