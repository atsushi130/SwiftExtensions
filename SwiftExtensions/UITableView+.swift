//
//  UITableView+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension UITableView {
    func register<T: UITableViewCell>(cellType: T.Type, bundle: Bundle? = Bundle(for: T.self)) {
        let className = cellType.className
        let nib       = UINib(nibName: className, bundle: bundle)
        self.register(nib, forCellReuseIdentifier: className)
    }
    
    func register<T: UITableViewCell>(cellTypes: T.Type..., bundle: Bundle? = Bundle(for: T.self)) {
        cellTypes.forEach { self.register(cellType: $0, bundle: bundle) }
    }
    
    func dequeueReusableCell<T: UITableViewCell>(with type: T.Type, for indexPath: IndexPath) -> T {
        return self.dequeueReusableCell(withIdentifier: type.className, for: indexPath) as! T
    }
}
