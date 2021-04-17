//
//  JSONParser.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public final class JSONParser<T: JSONContainer>: DataContainer, Parsable, Initable {
    
    public required override init() {
        super.init()
    }
    
    public func parse() throws -> T {
        let object = try JSONSerialization.jsonObject(with: try data(), options: [])
        
        guard let concrete = object as? T.Item else {
            throw ParseError.typecast
        }
        
        return T(concrete)
    }
}
