//
//  LibraryViewModel.swift
//  WBooks
//
//  Created by Gabriel Leandro Mazzei on 13/8/18.
//  Copyright © 2018 Wolox. All rights reserved.
//

import Foundation

class LibraryViewModel {
    
    func getBooks() -> [Book] {
        var books: [Book] = []
        
        let currentDate = Date()
        let year = "2018"
        let imageUrl = "https://bit.ly/2w5uI0G" // LOTR image
        
        for i in 0..<100 {
            books.append(Book(id: i, author: "Author \(i)", title: "Title \(i)",
                    image: ["url": imageUrl], publisher: "Publisher \(i)",
                    year: year, genre: "Genre \(i)",
                    createdAt: currentDate, updatedAt: currentDate))
        }
        
        return books
    }
    
}
