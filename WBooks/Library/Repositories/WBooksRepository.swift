//
//  WBooksRepository.swift
//  WBooks
//
//  Created by Gabriel Leandro Mazzei on 13/8/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Networking
import ReactiveSwift
import Argo
import Result

protocol WBookRepositoryType {
    
    func fetchEntities() -> SignalProducer<[Book], RepositoryError>
    
}

class WBookRepository: AbstractRepository, WBookRepositoryType {
    
    private static let EntitiesPath = "books"

    public func fetchEntities() -> SignalProducer<[Book], RepositoryError> {
        let path = WBookRepository.EntitiesPath
        return performRequest(method: .get, path: path) {
            decode($0).toResult()
        }
    }
    
}
