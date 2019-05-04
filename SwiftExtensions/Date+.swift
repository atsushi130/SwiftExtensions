//
//  Date+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2017.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension Date {
    func toString(by format: String = "yyyy/MM/dd HH:mm:ss", locale: Locale = Locale.current) -> String {
        return DateFormatter.from(locale: locale, format: format).string(from: self)
    }
}
