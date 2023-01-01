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
    
    //MARK: - init
    
    private init()  { }
    
    //MARK: - Api
    
    func bookListApi(_ completion: @escaping ((_ bookListModel: BooklistModel) -> Void )) {
        
        let booksApiUrl = "https://rss.applemarketingtools.com/api/v2/us/books/top-free/10/books.json"
        if let url = URL(string: booksApiUrl) {
            let task = URLSession.shared.dataTask(with: url) { data,response, error in
                guard let data = data else { return  }
                let decoder = JSONDecoder()
                if let model = try? decoder.decode(BooklistModel.self, from: data) {
                    completion(model)
                }
               
            }
            task.resume()
        }
 
    }
}

