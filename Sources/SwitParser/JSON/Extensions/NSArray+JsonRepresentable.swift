//
//  File.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension NSArray: JsonRepresentable {
    public func dynamicallyCall(withArguments args: [Int]) -> JsonRepresentable? {
        guard let index = args.first,
              index < count  else {
            return nil
        }
        
        return self[index] as? JsonRepresentable
    }
}
