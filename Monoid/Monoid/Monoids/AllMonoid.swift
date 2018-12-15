//
//  AllMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public struct All {
    public let value: Bool

    public init(_ v: Bool) {
        value = v
    }
}

extension All: Monoid {
    public static var mempty: All {
        return All(true)
    }

    public static func combine(_ a: All, _ b: All) -> All {
        return All(a.value && b.value)
    }
}

extension All: CustomStringConvertible {
    public var description: String {
        return "All(\(value))"
    }
}

extension All: Comparable, Orderable {
    public static func <(lhs: All, rhs: All) -> Bool {
        return lhs.value < rhs.value
    }

    public static func ==(lhs: All, rhs: All) -> Bool {
        return lhs.value == rhs.value
    }

}
