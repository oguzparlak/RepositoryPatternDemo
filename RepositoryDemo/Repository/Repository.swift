//
//  Repository.swift
//  RepositoryDemo
//
//  Created by oguzparlak on 4.02.2020.
//  Copyright © 2020 Oguz Parlak. All rights reserved.
//

import Foundation

protocol RepositoryProtocol {
    associatedtype T
    func save(_ item: T)
    func load() -> T?
}

open class Repository<T>: RepositoryProtocol {
    
    let repository: Repository?
    
    init(repository: Repository? = nil) {
        self.repository = repository
    }
    
    func save(_ item: T) {
        fatalError("concrete classes should implement this method")
    }
    
    func load() -> T? {
        fatalError("concrete classes should implement this method")
    }
    
}
