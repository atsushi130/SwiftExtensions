//
//  CGColor+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

public extension CGColor {
    public var uiColor: UIColor {
        return UIColor(cgColor: self)
    }
}
