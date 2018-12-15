//
//  Semigroup.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public protocol Semigroup {
    static func combine(_ a: Self, _ b: Self) -> Self

    static func sconcat<C: Collection>(_ x: Self, _ xs: C) -> Self where C.Iterator.Element == Self
}

public extension Semigroup {
    static func sconcat<C: Collection>(_ x: Self, _ xs: C) -> Self where C.Iterator.Element == Self {
        return xs.reduce(x, combine)
    }
}
