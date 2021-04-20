//
//  Parsable.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public protocol Parsable {
    associatedtype ParseType
    
    func parse() throws -> ParseType
}
