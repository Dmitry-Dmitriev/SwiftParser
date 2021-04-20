//
//  JSONArray.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

@dynamicCallable
public struct JSONArray: JSONContainer {

    public typealias Item = [Any]
        
    public init(_ item: Item) {
        self.array = item
    }
    
    private let array: Item
    
    public func dynamicallyCall(withArguments args: [Int]) -> JsonRepresentable? {
        guard let item = item(byArgs: args),
              let out = item as? JsonRepresentable else {
            return nil
        }
        
        return out
    }
    
    private func item(byArgs args: [Int]) -> Any? {
        guard let index = args.first,
              index < array.count else {
            return nil
        }
        
        return array[index]
    }
}
