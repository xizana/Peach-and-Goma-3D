//
//  Extensions.swift
//  Peach and Goma 3D
//
//  Created by Lasha Khizanishvili on 06.02.25.
//

import UIKit


extension UIStackView {
    func addArrangedSubviews(views: [UIView]) {
        views.forEach {
            addArrangedSubview($0)
        }
    }
}


extension UIView {
    func addSubviews(views: [UIView]) {
        views.forEach {
            addSubview($0)
        }
    }
}
