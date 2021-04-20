//
//  VoidParser.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public final class VoidParser: DataContainer, Parsable, Initable {
    
    public required override init() {
        super.init()
    }
    
    public func parse() throws {
    }
}
