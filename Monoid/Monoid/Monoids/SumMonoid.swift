//
//  SumMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

struct Sum<T: NumberType> {
    public let value: T

    public init(_ v: T) {
        value = v
    }
}

extension Sum: Monoid {
    static var mempty: Sum<T> {
        return Sum(T.zero)
    }

    static func combine(_ a: Sum<T>, _ b: Sum<T>) -> Sum<T> {
        return Sum(a.value + b.value)
    }
}

extension Sum: CustomStringConvertible {
    var description: String {
        return "Sum(\(value))"
    }
}

extension Sum: Comparable, Orderable {
    static func <(lhs: Sum<T>, rhs: Sum<T>) -> Bool {
        return lhs.value < rhs.value
    }

    public static func ==(lhs: Sum<T>, rhs: Sum<T>) -> Bool {
        return lhs.value == rhs.value
    }
}
