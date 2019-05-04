//
// Created by Atsushi Miyake on 2019/03/24.
// Copyright (c) 2019 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension JSONEncoder {
    static var snakeCaseEncoder: JSONEncoder {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder
    }
}
