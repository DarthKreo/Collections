//
//  InsideCell.swift
//  Collections
//
//  Created by Владимир Кваша on 03.12.2020.
//

import UIKit

// MARK: - Cell of insideCollection

class InsideCell: UICollectionViewCell {
    static let reuseIdentifier = "InsideCell"
    
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(imageView)
        NSLayoutConstraint.activate([
                                        imageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                                        imageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                                        imageView.topAnchor.constraint(equalTo: contentView.topAnchor),
                                        imageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)])
    }
    
    func cofigure(color: UIColor) {
        imageView.backgroundColor = color
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

