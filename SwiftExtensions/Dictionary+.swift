//
//  Dictionary+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/10.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Dictionary {
    mutating func merge<S: Sequence>(contentsOf other: S) where S.Iterator.Element == (key: Key, value: Value) {
        other.forEach { key, value in
            self[key] = value
        }
    }
}
