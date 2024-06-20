//
//  RMCharacterPhotoCollectionViewCellViewModel.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 19.06.2024.
//

import Foundation

final class RMCharacterPhotoCollectionViewCellViewModel {
    private let imageUrl: URL?

    init(imageUrl: URL?) {
        self.imageUrl = imageUrl
    }

    public func fetchImage(completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = imageUrl else {
            completion(.failure(URLError(.badURL)))
            return
        }
        RMImageLoader.shared.downloadImage(url, completion: completion)
    }
}
