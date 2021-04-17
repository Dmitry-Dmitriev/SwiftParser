//
//  DecodableParser.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public final class DecodableParser<T: Decodable>: DataContainer, Parsable, Initable {
    
    public required override init() {
        super.init()
    }
    
    public func parse() throws -> T {
        try JSONDecoder().decode(T.self, from: try data())
    }
}
