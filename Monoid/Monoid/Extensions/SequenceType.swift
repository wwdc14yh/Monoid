//
//  SequenceType.swift
//  Monoid
//
//  Created by FD on 2018/11/28.
//  Copyright © 2018 FD. All rights reserved.
//

import Foundation

public extension Sequence {
    func sortBy(_ f: (Iterator.Element, Iterator.Element) -> Ordering) -> [Iterator.Element] {
        return sorted { f($0, $1) == .less }
    }
}

