//
//  Monoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public protocol Monoid: Semigroup {
    static var mempty: Self { get }
    static func mconcat<C: Collection>(_ xs: C) -> Self where C.Iterator.Element == Self
}

public extension Monoid {
    static func mconcat<C: Collection>(_ xs: C) -> Self where C.Iterator.Element == Self {
        return .sconcat(mempty, xs)
    }
}
