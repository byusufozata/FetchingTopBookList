//
//  BookListModel.swift
//  FetchingTopBookList
//
//  Created by YUSUF ÖZATA on 30.12.2022.
//

import Foundation

struct BooklistModel: Codable {
    let feed: FeedClass
}

struct FeedClass: Codable {
    let results: [Result]
}

struct Result: Codable {
    var name: String
    var date: String
    var image: String

    enum CodingKeys: String, CodingKey {
        case name = "artistName"
        case date = "releaseDate"
        case image = "artworkUrl100"
        
    }
}
