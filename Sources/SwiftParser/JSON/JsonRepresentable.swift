//
//  JsonRepresentable.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

@dynamicCallable
@dynamicMemberLookup
public protocol JsonRepresentable: CustomStringConvertible {
    var int: Int? { get }
    var float: Float? { get }
    var double: Double? { get }
    var bool: Bool? { get }
    var string: String? { get }
    var isNil: Bool? { get }
    
    func dynamicallyCall(withArguments args: [Int]) -> JsonRepresentable?
    subscript(dynamicMember member: String) -> JsonRepresentable? { get }
}

extension JsonRepresentable {
    public var int: Int? { nil }
    public var float: Float? { nil }
    public var double: Double? { nil }
    public var bool: Bool? { nil }
    public var string: String? { nil }
    public var isNil: Bool? { nil }
    
    public func dynamicallyCall(withArguments args: [Int]) -> JsonRepresentable? { nil }
    public subscript(dynamicMember member: String) -> JsonRepresentable? { nil }
}
