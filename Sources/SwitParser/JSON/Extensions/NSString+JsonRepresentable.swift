//
//  NSString+JsonRepresentable.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension NSString: JsonRepresentable {
    public var string: String? { self as String }
}
