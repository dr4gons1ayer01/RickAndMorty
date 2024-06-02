//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Иван Семенов on 01.06.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}

