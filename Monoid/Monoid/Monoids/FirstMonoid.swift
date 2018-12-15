//
//  FirstMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public struct First<T> {
    public let value: Optional<T>

    public init(_ v: Optional<T>) {
        value = v
    }
}

extension First: Monoid {
    public static var mempty: First<T> {
        return First(.none)
    }

    public static func combine(_ a: First<T>, _ b: First<T>) -> First<T> {
        return a.value.map { _ in
            a
        } ?? b
    }
}

extension First: CustomStringConvertible {
    public var description: String {
        return "Fisrt(\(String(describing: value)))"
    }
}

public func ==<T: Equatable>(x: First<T>, y: First<T>) -> Bool {
    return x.value == y.value
}
