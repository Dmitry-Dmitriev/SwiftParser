//
//  File.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension NSDictionary: JsonRepresentable {
    public subscript(dynamicMember member: String) -> JsonRepresentable? {
        guard let item = self[member] else {
            return nil
        }
        return item as? JsonRepresentable
    }
}
