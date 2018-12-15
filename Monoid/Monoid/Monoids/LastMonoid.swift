//
//  LastMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public struct Last<T> {
    public let value: Optional<T>

    public init(_ v: Optional<T>) {
        value = v
    }
}

extension Last: Monoid {
    public static var mempty: Last<T> {
        return Last(.none)
    }

    public static func combine(_ a: Last<T>, _ b: Last<T>) -> Last<T> {
        return b.value.map { _ in
            b
        } ?? a
    }
}

extension Last: CustomStringConvertible {
    public var description: String {
        return "Last(\(String(describing: value)))"
    }
}

public func ==<T: Equatable>(x: Last<T>, y: Last<T>) -> Bool {
    return x.value == y.value
}

