//
//  ReusableViewController.swift
//  Peach and Goma 3D
//
//  Created by Lasha Khizanishvili on 06.02.25.
//

import UIKit


@dynamicMemberLookup
class ReusableViewController<V: UIView>: UIViewController {
    
    lazy var genericView: V = V()
    
    override func loadView() {
        self.view = genericView
    }
    
    subscript<T>(dynamicMember keyPath: KeyPath<V,T>) -> T {
        return genericView[keyPath: keyPath]
    }
}


