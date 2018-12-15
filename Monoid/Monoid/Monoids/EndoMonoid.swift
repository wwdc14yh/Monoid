//
//  EndoMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public struct Endo<A> {
    public let value: (A) -> A

    public init(_ v: @escaping (A) -> A) {
        value = v
    }
}

extension Endo: Monoid {
    public static var mempty: Endo<A> {
        return Endo(id)
    }

    public static func combine(_ a: Endo<A>, _ b: Endo<A>) -> Endo<A> {
        return Endo({ b.value(a.value($0)) })
    }
}

extension Endo: CustomStringConvertible {
    public var description: String {
        return "Endo(Function)"
    }
}
