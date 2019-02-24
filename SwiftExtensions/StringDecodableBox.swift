//
//  StringDecodableBox.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2019/02/24.
//  Copyright © 2019年 Atsushi Miyake. All rights reserved.
//

import Foundation

public struct StringDecodableBox<T: LosslessStringConvertible>: Decodable {
    public let value: T
    public init(from decoder: Decoder) throws {
        let stringValue = try decoder.singleValueContainer().decode(String.self)
        guard let value = T(stringValue) else {
            throw DecodingError.dataCorrupted(.init(codingPath: decoder.codingPath, debugDescription: "The string cannot cast to \(T.self)."))
        }
        self.value = value
    }
}

extension URL: LosslessStringConvertible {
    public init?(_ description: String) {
        guard let url = URL(string: description) else { return nil }
        self = url
    }
}
