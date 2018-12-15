//
//  StringMonoid.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

extension String: Monoid {
    public static var mempty: String {
        return ""
    }

    public static func combine(_ a: String, _ b: String) -> String {
        return a + b
    }

    public static func mconcat(_ a: [String]) -> String {
        var result = ""
        a.forEach { s in
            result += s
        }
        return result
    }
}
