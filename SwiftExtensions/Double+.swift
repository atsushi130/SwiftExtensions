//
//  Double+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension Double {
    
    var half: Double {
        return self / 2.0
    }
    
    var floor: Double {
        return Foundation.floor(self)
    }
    
    var ceil: Double {
        return Foundation.ceil(self)
    }
    
    var round: Double {
        return Foundation.round(self)
    }
    
    var cgFloat: CGFloat {
        return CGFloat(self)
    }
}
