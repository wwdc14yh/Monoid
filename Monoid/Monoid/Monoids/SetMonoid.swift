//
//  SetMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

extension Set: Monoid {
    public static var mempty: Set<Element> {
        return Set()
    }

    public static func combine(_ a: Set<Element>, _ b: Set<Element>) -> Set<Element> {
        return a.union(b)
    }

    public static func mconcat(_ a: [Set]) -> Set {
        var result = Set()
        a.forEach { e in
            result.formUnion(e)
        }
        return result
    }
}
