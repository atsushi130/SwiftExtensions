//
// Created by Atsushi Miyake on 2019/03/24.
// Copyright (c) 2019 Atsushi Miyake. All rights reserved.
//

import Foundation

func binarySearch<T: Comparable>(_ array: [T], target element: T, range: Range<Int>) -> Bool {
    if range.lowerBound >= range.upperBound {
        return false
    } else {
        let centerIndex = range.lowerBound + (range.upperBound - range.lowerBound) / 2
        if array[centerIndex] > element {
            // recursive search the first half as search target
            return binarySearch(array, target: element, range: range.lowerBound ..< centerIndex)
        } else if array[centerIndex] < element {
            // recursive search the latter half as search target
            return binarySearch(array, target: element, range: centerIndex + 1 ..< range.upperBound)
        } else {
            // end binary search
            return true
        }
    }
}