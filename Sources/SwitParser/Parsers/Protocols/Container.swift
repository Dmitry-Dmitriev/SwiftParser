//
//  Container.swift
//  
//
//  Created by dmitry on 15.04.2021.
//

import Foundation

public protocol Container {
    associatedtype Item
    
    var item: Item? { get set }
}
