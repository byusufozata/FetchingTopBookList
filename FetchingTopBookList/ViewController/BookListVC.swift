//
//  ViewController.swift
//  FetchingTopBookList
//
//  Created by YUSUF ÖZATA on 29.12.2022.
//

import UIKit

class BookListVC: UIViewController {
    
    //MARK: - Outlet
    
    @IBOutlet var collectionViewBooks: UICollectionView!
    
    //MARK: - Variable
    
    var bookListViewModel: BookListViewModel = BookListViewModel()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewBooks.register(UINib(nibName: "BookCell", bundle: nil), forCellWithReuseIdentifier: "BookCell")
        bookListViewModel.callBookListApi { model in
            DispatchQueue.main.async {
                self.collectionViewBooks.reloadData()
            }
        }
        
    }

}


extension BookListVC: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BookCell", for: indexPath) as? BookCell else {
            fatalError("Cell is not dequed corretcly")
        }
        return cell 
    }
    
    
}
