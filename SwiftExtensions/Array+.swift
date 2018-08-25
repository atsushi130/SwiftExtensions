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
