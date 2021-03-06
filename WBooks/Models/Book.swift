//
//  Book.swift
//  WBooks
//
//  Created by Gabriel Leandro Mazzei on 13/8/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation
import Argo
import Runes
import Curry

struct Book {
    
    // MARK: Properties
    let id: Int
    let author: String
    let title: String
    let imageURL: URL?
    let year: String
    let genre: String
    
    
    init(id: Int, author: String, title: String, imageURL: String?, year: String, genre: String) {
        self.id = id
        self.author = author
        self.title = title
        self.imageURL = imageURL.map { URL(string: $0)! }
        self.year = year
        self.genre = genre
    }
}

extension Book: Argo.Decodable {
    
    static func decode(_ json: JSON) -> Decoded<Book> {
        return curry(Book.init)
            <^> json <| "id"
            <*> json <| "author"
            <*> json <| "title"
            <*> json <|? "image_url"
            <*> json <| "year"
            <*> json <| "genre"
    }
    
}
