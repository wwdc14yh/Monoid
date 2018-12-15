//
//  mappend.swift
//  Monoid
//
//  Created by FD on 2018/11/27.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

precedencegroup Monoidal {
    associativity: right
    lowerThan: AdditionPrecedence
}

infix operator <> : Monoidal

public func <> <A: Semigroup> (lhs: A, rhs: A) -> A {
    return A.combine(lhs, rhs)
}
