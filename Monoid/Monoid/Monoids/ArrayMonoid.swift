//
//  ArrayMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

extension Array: Monoid {
    public static var mempty: [Element] {
        return []
    }

    public static func combine(_ a: Array<Element>, _ b: Array<Element>) -> Array<Element> {
        return a + b
    }

    static func mconcat(_ a: [[Element]]) -> [Element] {
        var result: [Element] = []
        a.forEach { e in
            result += e
        }
        return result
    }
}

