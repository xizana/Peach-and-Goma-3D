//
//  PeachandgomaView.swift
//  Peach and Goma 3D
//
//  Created by Lasha Khizanishvili on 06.02.25.
//

import UIKit


class PeachandgomaView: UIView {
    
    // MARK: - Properties
    
    private lazy var welcomeLabel: UILabel = {
       let label = UILabel()
        label.text = "WELCOME"
        label.textColor = .lightGray
        label.font = .systemFont(ofSize: 26)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    // MARK: - Stacks and Views
    
    private lazy var contentView: UIView  = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubviews(views: [welcomeLabel])
        return view
    }()
    
    // MARK: - init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Functions
    
    private func configureUI() {
        backgroundColor = .white
        addSubview(contentView)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            welcomeLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 80),
            welcomeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor)
        ])
        
    }
    
}
