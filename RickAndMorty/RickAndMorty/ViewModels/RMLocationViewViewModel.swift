//
//  RMLocationViewViewModel.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 06.07.2024.
//

import Foundation

final class RMLocationViewViewModel {
    
    private var locations: [RMLocation] = []
    
    // Location response info
    // Will contain next url, if present
    
    private var cellViewModels: [String] = []
    
    init() {
        
    }
    
    public func fetchLocations() {
        RMService.shared.execute(.listLocationsRequests, expecting: String.self) { result in
            switch result {
            case .success(let model):
                break
            case .failure(let error):
                break
            }
        }
    }
    
    private var hasMoreResults: Bool {
        return false
    }
}
