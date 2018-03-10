//
//  Dictionary+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/10.
//  Copyright © 2018年 Atsushi Miyake. All rights reserved.
//

import Foundation

extension Dictionary {
    
    static func + (lhs: Dictionary, rhs: Dictionary) -> Dictionary {
        var dictionary = lhs
        rhs.forEach { element in
            dictionary[element.key] = element.value
        }
        return dictionary
    }
}
