//
//  ProductMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public struct Product<T: NumberType> {
    public let value: T

    public init(_ v: T) {
        value = v
    }
}

extension Product: Monoid {
    public static var mempty: Product<T> {
        return Product(T.one)
    }

    public static func combine(_ a: Product<T>, _ b: Product<T>) -> Product<T> {
        return Product(a.value * b.value)
    }
}

extension Product: CustomStringConvertible {
    public var description: String {
        return "Product(\(value))"
    }
}

extension Product: Comparable, Orderable {
    public static func <(lhs: Product<T>, rhs: Product<T>) -> Bool {
        return lhs.value < rhs.value
    }

    public static func ==(lhs: Product<T>, rhs: Product<T>) -> Bool {
        return lhs.value == rhs.value
    }
}
