//
//  OrderableInstances.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

extension String: Orderable {}

extension Int: Orderable {}
extension Int64: Orderable {}
extension Int32: Orderable {}
extension Int16: Orderable {}
extension Int8: Orderable {}

extension UInt64: Orderable {}
extension UInt32: Orderable {}
extension UInt16: Orderable {}
extension UInt8: Orderable {}

extension Double: Orderable {}
extension Float: Orderable {}

extension Bool: Comparable, Orderable { }

public func < (lhs: Bool, rhs: Bool) -> Bool {
    switch (lhs,rhs) {
    case (false, true):
        return true
    default:
        return false
    }
}
