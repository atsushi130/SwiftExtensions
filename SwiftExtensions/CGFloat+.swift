//
//  CGFloat+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import Foundation

public extension CGFloat {
    
    var half: CGFloat {
        return self / 2.0
    }
    
    var floor: CGFloat {
        return Foundation.floor(self)
    }
    
    var ceil: CGFloat {
        return Foundation.ceil(self)
    }
    
    var round: CGFloat {
        return Foundation.round(self)
    }
}
