//
//  DateFormatter+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension DateFormatter {
    static func from(locale: Locale, format: String) -> DateFormatter {
        let formatter = DateFormatter()
        formatter.locale     = locale
        formatter.dateFormat = format
        return formatter
    }
}
