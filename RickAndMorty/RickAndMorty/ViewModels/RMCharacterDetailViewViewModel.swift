//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 05.06.2024.
//

import UIKit

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
