//
//  NSObject+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension NSObject {
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
    
    /**
     * deep copy
     * NSCoding の実装が必要
     * @return コピーされたオブジェクト
     */
    public func deepCopy<T>() -> T? {
        let data = NSKeyedArchiver.archivedData(withRootObject: self)
        return NSKeyedUnarchiver.unarchiveObject(with: data) as? T
    }
}