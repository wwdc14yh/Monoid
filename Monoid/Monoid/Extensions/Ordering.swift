//
//  Ordering.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public enum Ordering: Equatable, Comparable, Orderable {
    
    case less, equal, more
}

public func < (x: Ordering, y: Ordering) -> Bool {
    switch (x,y) {
    case (.less, .equal), (.less, .more), (.equal, .more):
        return true
    default:
        return false
    }
}
