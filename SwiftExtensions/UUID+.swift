//
//  UUID+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension UUID {
    static func generate() -> String {
        return UUID().uuidString
    }
}
