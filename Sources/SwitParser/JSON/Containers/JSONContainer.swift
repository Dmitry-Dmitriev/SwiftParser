//
//  JSONContainer.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public protocol JSONContainer {
    associatedtype Item
    init(_ item: Item)
}
