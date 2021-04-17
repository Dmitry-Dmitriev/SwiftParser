//
//  StringParser.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public final class StringParser: DataContainer, Parsable, Initable {
    
    public required override init() {
        super.init()
    }
    
    public func parse() throws -> String {
        guard let str = String(data: try data(), encoding: .utf8) else {
            throw ParseError.stringToData
        }

        return str
    }
}
