//
//  OptionalityChangeWrapper.swift
//  OptionalityChangesTest
//
//  Created by Paul Rehkugler on 6/14/16.
//  Copyright © 2016 Tumblr. All rights reserved.
//

import Foundation

struct OptionalityChangeWrapper<T> {
    var value: T?

    init(value: T) {
        self.value = value
    }
}
