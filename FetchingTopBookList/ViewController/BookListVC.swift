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
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        UICollectionView()
    }
    
    
}
