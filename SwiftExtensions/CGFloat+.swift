//
//  CGFloat+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension CGFloat {
    
    public var half: CGFloat {
        return self / 2.0
    }
    
    public var floor: CGFloat {
        return Foundation.floor(self)
    }
    
    public var ceil: CGFloat {
        return Foundation.ceil(self)
    }
    
    public var round: CGFloat {
        return Foundation.round(self)
    }
}
