//
//  SectionHeader.swift
//  Collections
//
//  Created by Владимир Кваша on 04.12.2020.
//

import UIKit

class SectionHeader: UICollectionReusableView {
        static let reuseIdentifier = "SectionHeader"
    
        public lazy var title = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        title.textColor = .label
        title.font = UIFontMetrics.default.scaledFont(for: UIFont.systemFont(ofSize: 20, weight: .bold))
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        
        NSLayoutConstraint.activate([
                                        title.leadingAnchor.constraint(equalTo: leadingAnchor),
                                        title.trailingAnchor.constraint(equalTo: trailingAnchor),
                                        title.topAnchor.constraint(equalTo: topAnchor),
                                        title.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5)])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
