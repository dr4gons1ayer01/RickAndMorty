//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 30.05.2024.
//

import Foundation

/// Represents unique API endpoint
@frozen enum RMEndpoint: String {
    /// Endpoint to get character info
    case character
    /// Endpoint to get location info
    case location
    /// Endpoint to get episode info
    case episode
}
