//
//  Double+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension Double {
    
    public var half: Double {
        return self / 2.0
    }
    
    public var floor: Double {
        return Foundation.floor(self)
    }
    
    public var ceil: Double {
        return Foundation.ceil(self)
    }
    
    public var round: Double {
        return Foundation.round(self)
    }
    
    public var cgFloat: CGFloat {
        return CGFloat(self)
    }
}
