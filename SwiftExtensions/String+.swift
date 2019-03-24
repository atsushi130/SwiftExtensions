//
//  String+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension String {

    public var attributed: NSMutableAttributedString {
        return NSMutableAttributedString(string: self)
    }

    public func kebabcased() -> String {
        return self.replacingOccurrences(of: "([A-Z])", with: "-$1", options: .regularExpression).lowercased()
    }

    public func snakecased() -> String {
        return self.replacingOccurrences(of: "([A-Z])", with: "_$1", options: .regularExpression).lowercased()
    }

    public func toDate(by format: String = "yyyy/MM/dd HH:mm:ss", locale: Locale = Locale.current) -> Date? {
        return DateFormatter.from(locale: locale, format: format).date(from: self)
    }
    
    public func isMatch(pattern: String) -> Bool {
        do {
            let regex = try NSRegularExpression(pattern: pattern, options: [.caseInsensitive])
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
}
