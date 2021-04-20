//
//  File.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public protocol ExtendedError: Error {
    var code: Int { get }
    var localizedKey: String { get }
    var engLocalizedDescription: String { get }
}
