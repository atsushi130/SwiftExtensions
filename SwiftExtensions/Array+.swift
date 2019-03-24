//
//  Array+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/08/25.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Array {
    subscript(ifAny index: Int) -> Element? {
        if self.count >= (index + 1) {
            return self[index]
        } else {
            return nil
        }
    }
}

extension Array where Element: Comparable {
    public func contains(_ element: Element, using algorithm: SearchAlgorithm) -> Bool {
        switch algorithm {
        case .linearSearch:
            return self.contains(element)
        case .binarySearch:
            return binarySearch(self, target: element, range: 0..<self.count)
        }
    }
}

public enum SearchAlgorithm {
    case linearSearch
    case binarySearch
}
