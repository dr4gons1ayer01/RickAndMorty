//
//  RMGetAllLocationsResponse.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 06.07.2024.
//

import Foundation

struct RMGetAllLocationsResponse: Codable {
    
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMLocation]
}
