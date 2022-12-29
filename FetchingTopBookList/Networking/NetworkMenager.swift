//
//  NetworkMenager.swift
//  FetchingTopBookList
//
//  Created by YUSUF ÖZATA on 30.12.2022.
//

import UIKit

class NetworkMenager {
    
    //MARK: - Variables
    
    static var ins = NetworkMenager()
    
    //MARK: - Api
    
    func bookListApi() {
        
        let booksApiUrl = " https://rss.applemarketingtools.com/api/v2/tr/books/top-free/10/books.json"
        if let url = URL(string: booksApiUrl) {
            let task = URLSession.shared.dataTask(with: url) { data,response, error in
                guard let data = data else { return  }
            }
            task.resume()
        }
 
    }
}
