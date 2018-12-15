//
//  NumberTypeInstances.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

extension Int: NumberType {
    public static var zero: Int { return 0 }
    public static var one: Int { return 1 }
}

extension Int64: NumberType {
    public static var zero: Int64 { return 0 }
    public static var one: Int64 { return 1 }
}

extension Int32: NumberType {
    public static var zero: Int32 { return 0 }
    public static var one: Int32 { return 1 }
}

extension Int16: NumberType {
    public static var zero: Int16 { return 0 }
    public static var one: Int16 { return 1 }
}

extension Int8: NumberType {
    public static var zero: Int8 { return 0 }
    public static var one: Int8 { return 1 }
}

extension UInt64: NumberType {
    public static var zero: UInt64 { return 0 }
    public static var one: UInt64 { return 1 }
}

extension UInt32: NumberType {
    public static var zero: UInt32 { return 0 }
    public static var one: UInt32 { return 1 }
}

extension UInt16: NumberType {
    public static var zero: UInt16 { return 0 }
    public static var one: UInt16 { return 1 }
}

extension UInt8: NumberType {
    public static var zero: UInt8 { return 0 }
    public static var one: UInt8 { return 1 }
}

extension Double: NumberType {
    public static var zero: Double { return 0.0 }
    public static var one: Double { return 1.0 }
}

extension Float: NumberType {
    public static var zero: Float { return 0.0 }
    public static var one: Float { return 1.0 }
}
