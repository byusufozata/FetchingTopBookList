//
//  BookList.swift
//  FetchingTopBookList
//
//  Created by YUSUF ÖZATA on 30.12.2022.
//

import UIKit

class BookListViewModel {
    
    //MARK: - API Function
    
    func callBookListApi() {
        // calling my bookListApi
        NetworkMenager.ins.bookListApi()
    }
}
