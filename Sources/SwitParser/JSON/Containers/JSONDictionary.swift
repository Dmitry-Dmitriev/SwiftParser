//
//  JSONDictionary.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

@dynamicMemberLookup
public struct JSONDictionary: JSONContainer {
    public typealias Item = [String: Any]
    
    public init(_ item: Item) {
        self.dictionary = item
    }
    
    private let dictionary: Item
    
    public subscript(dynamicMember member: String) -> JsonRepresentable? {
        guard let item = dictionary[member] else {
            return nil
        }
    
        return item as? JsonRepresentable
    }
}
