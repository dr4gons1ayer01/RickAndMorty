//
//  RMSearchViewViewModel.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 11.07.2024.
//

import UIKit

// Responsibilities
// - show search results
// - show no results view
// - kick off API requests

final class RMSearchViewViewModel {
    let config: RMSearchViewController.Config
    
    init(config: RMSearchViewController.Config) {
        self.config = config
    }
}
