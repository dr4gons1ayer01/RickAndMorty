//
//  RMEpisodeDetailView.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 23.06.2024.
//

import UIKit

final class RMEpisodeDetailView: UIView {
    
    private var viewModel: RMEpisodeDetailViewViewModel?
    
    private var collectionView: UICollectionView?
    
    private let spinner: UIActivityIndicatorView = {
        let spinner = UIActivityIndicatorView()
        spinner.translatesAutoresizingMaskIntoConstraints = false
        return spinner
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .red
//        self.collectionView = createCollectionView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    
    private func addConstraits() {
        guard let collectionView = collectionView else {
            return
        }
        
        NSLayoutConstraint.activate([
            collectionView.topAnchor.constraint(equalTo: topAnchor),
            collectionView.leftAnchor.constraint(equalTo: leftAnchor),
            collectionView.rightAnchor.constraint(equalTo: rightAnchor),
            collectionView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
//    private func createCollectionView() -> UICollectionView{
//        
//    }
    
    // MARK: - Public
    
    public func configure(with viewModel: RMEpisodeDetailViewViewModel) {
        self.viewModel = viewModel
    }
    
}

