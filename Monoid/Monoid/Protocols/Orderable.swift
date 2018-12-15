//
//  Orderable.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public protocol Orderable: Comparable {
    func compare(_ other: Self) -> Ordering
}

public extension Orderable {
    func compare(_ other: Self) -> Ordering {
        if self == other {
            return .equal
        } else if self < other {
            return .less
        } else {
            return .more
        }
    }
}

