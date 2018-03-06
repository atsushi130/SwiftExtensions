//
//  UIVew+.swift
//  SwiftExtensions
//
//  Created by Atsushi Miyake on 2018/03/06.
//  Copyright © 2017年 Atsushi Miyake. All rights reserved.
//

import UIKit

public extension UIView {
    
    public var _eachSafeAreaInsets: UIEdgeInsets {
        guard #available(iOS 11.0, *) else { return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0) }
        return self.safeAreaInsets
    }
    
    public func fillSuperview() {
        guard let superview = self.superview else { return }
        self.translatesAutoresizingMaskIntoConstraints = superview.translatesAutoresizingMaskIntoConstraints
        if self.translatesAutoresizingMaskIntoConstraints {
            self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            self.frame            = superview.bounds
        } else {
            self.topAnchor.constraint(equalTo: superview.topAnchor).isActive       = true
            self.bottomAnchor.constraint(equalTo: superview.bottomAnchor).isActive = true
            self.leftAnchor.constraint(equalTo: superview.leftAnchor).isActive     = true
            self.rightAnchor.constraint(equalTo: superview.rightAnchor).isActive   = true
        }
    }
}
