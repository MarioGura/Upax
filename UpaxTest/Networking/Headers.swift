//
//  Headers.swift
//  UpaxTest
//
//  Created by Mario on 16/01/22.
//

import Foundation

struct Headers: Subscriptable {

    var collection: [HeaderName: String] = [:]

    init() {}

    subscript(index: HeaderName) -> String {
        get { return collection[index] ?? "" }
        set { collection[index] = newValue }
    }
}

enum HeaderName: String, Hashable {
    case contentType      = "Content-Type"
}
