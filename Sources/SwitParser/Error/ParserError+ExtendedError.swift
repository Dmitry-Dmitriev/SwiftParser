//
//  ParseError + ExtendedError.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

extension ParseError: ExtendedError {
    var code: Int {
        self.rawValue
    }
    
    var localizedKey: String {
        "ParseError.Code.\(code)"
    }
    
    var engLocalizedDescription: String {
        switch self {
        case .noData: return "Value not found"
        case .stringToData: return "String could not be create from data"
        case .typecast: return "Type could not be created from data"
        }
    }
}
