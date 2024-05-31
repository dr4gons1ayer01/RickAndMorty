//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 30.05.2024.
//

import Foundation

// MARK: - RMLocation
struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}

