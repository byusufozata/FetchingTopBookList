//
//  BookList.swift
//  FetchingTopBookList
//
//  Created by YUSUF ÖZATA on 30.12.2022.
//

import Foundation

class BookListViewModel {
    
    //MARK: - Veriables
    
    var bookListModel: BooklistModel?
    
    //MARK: - API Function
    
    func callBookListApi(_ completion: @escaping ((_ model: BooklistModel) -> Void )) {
        // calling my bookListApi
        NetworkMenager.ins.bookListApi { bookListModel in
            self.bookListModel = bookListModel
            completion(bookListModel)
            print(bookListModel)
        }
    }
}
