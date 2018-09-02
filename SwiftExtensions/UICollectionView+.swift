//
//  UICollectionView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation
import UIKit

public extension UICollectionView {
    
    // MARK: - RegisterNib
    public func register(cellType: UICollectionViewCell.Type, bundle: Bundle? = nil) {
        let className = cellType.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.register(nib, forCellWithReuseIdentifier: className)
    }
    
    public func register(cellTypes: UICollectionViewCell.Type..., bundle: Bundle? = nil) {
        cellTypes.forEach { register(cellType: $0) }
    }
    
    // MARK: - Register Header View
    public func register(reusableViewType: UICollectionReusableView.Type, of kind: String = UICollectionElementKindSectionHeader) {
        let className = reusableViewType.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    public func register(reusableViewTypes: UICollectionReusableView.Type..., kind: String = UICollectionElementKindSectionHeader) {
        reusableViewTypes.forEach { register(reusableViewType: $0, of: kind) }
    }
    
    // MARK: - Register Footer View
    public func register(reusableViewFooterType: UICollectionReusableView.Type, of kind: String = UICollectionElementKindSectionFooter) {
        let className = reusableViewFooterType.className
        let nib       = UINib(nibName: className, bundle: nil)
        self.register(nib, forSupplementaryViewOfKind: kind, withReuseIdentifier: className)
    }
    
    public func register(reusableViewFooterTypes: UICollectionReusableView.Type..., kind: String = UICollectionElementKindSectionFooter) {
        reusableViewFooterTypes.forEach {
            self.register(reusableViewFooterType: $0, of: kind)
        }
    }
    
    // MARK: - DequeueReusableCell
    public func dequeueReusableCell<T: UICollectionViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withReuseIdentifier: type.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableHeaderView
    public func dequeueReusableView<T: UICollectionReusableView>(
        with type: T.Type,
        for indexPath: IndexPath,
        of kind: String = UICollectionElementKindSectionHeader) -> T {
        return self.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.className, for: indexPath) as! T
    }
    
    // MARK: - DequeueReusableFooterView
    public func dequeueReusableFooterView<T: UICollectionReusableView>(
        with type: T.Type,
        for indexPath: IndexPath,
        of kind: String = UICollectionElementKindSectionFooter) -> T {
        return self.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: type.className, for: indexPath) as! T
    }
}

public extension UICollectionViewDelegate {
    public func numberOfSections(collectionView: UICollectionView) -> Int {
        return 1
    }
}
