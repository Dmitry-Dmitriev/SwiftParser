//
//  File.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension NSNull: JsonRepresentable {
    public var isNil: Bool? { true }
}
