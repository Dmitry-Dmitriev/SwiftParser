//
//  NSNumber+JsonRepresentable.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension NSNumber: JsonRepresentable {
    public var int: Int? { intValue }
    public var float: Float? { floatValue }
    public var double: Double? { doubleValue }
    public var bool: Bool? { boolValue }
}
