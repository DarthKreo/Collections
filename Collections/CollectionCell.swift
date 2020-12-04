//
//  CollectionCell.swift
//  Collections
//
//  Created by Владимир Кваша on 03.12.2020.
//

import UIKit

// MARK: - Collection inside the Cell

class CollectionCell: UICollectionViewCell {
    
    static let reuseIdentifier = "Cell"
    public var info = UIColor()
    
    private var collectionView: UICollectionView!
    private lazy var layout: UICollectionViewFlowLayout = {
        
    // MARK: - Layout
        
        let collectionFlowLayout = UICollectionViewFlowLayout()
        let sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        collectionFlowLayout.sectionInset = sectionInset
        collectionFlowLayout.itemSize = CGSize(width: collectionView.bounds.width - sectionInset.left, height: collectionView.bounds.height - sectionInset.top - sectionInset.bottom)
        collectionFlowLayout.minimumInteritemSpacing = 5
        collectionFlowLayout.minimumLineSpacing = 5
        collectionFlowLayout.scrollDirection = .horizontal
        return collectionFlowLayout
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        collectionView = UICollectionView(frame: contentView.bounds, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.collectionViewLayout = layout
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = .clear
        collectionView.isPagingEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(InsideCell.self, forCellWithReuseIdentifier: InsideCell.reuseIdentifier)
        contentView.addSubview(collectionView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }    
}

// MARK: - UICollectionViewDelegate, UICollectionViewDataSource

extension CollectionCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Model.events.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: InsideCell.reuseIdentifier, for: indexPath) as? InsideCell else { return UICollectionViewCell() }
        cell.cofigure(color: info)
        return cell
    }
}

