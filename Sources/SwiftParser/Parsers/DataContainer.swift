//
//  DataContainer.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public class DataContainer: Container {
    
    public var item: Data?
    
    func data() throws -> Data {
        guard let data = item else {
            throw ParseError.noData
        }
        return data
    }
}
