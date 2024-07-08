//
//  RMLocationViewController.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 30.05.2024.
//

import UIKit

/// Controller to show and search for Locations
final class RMLocationViewController: UIViewController, RMLocationViewViewModelDelegate {

    private let locationView = RMLocationView()
    
    private let viewModel = RMLocationViewViewModel()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Locations"
        setUpView()
        addSearchButton()
        viewModel.delegate = self
        viewModel.fetchLocations()
    }
    
    private func addSearchButton() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .search, target: self, action: #selector(didTapSearch))
    }
    
    @objc
    private func didTapSearch() {
        let vc = RMSearchViewController.Config(type: .location)
    }

    private func setUpView() {
        view.addSubview(locationView)
        NSLayoutConstraint.activate([
            locationView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            locationView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            locationView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            locationView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    // MARK: - LocationViewModel Delegate
    
    func didFetchInitialLocations() {
        locationView.configure(with: viewModel)
    }
}

