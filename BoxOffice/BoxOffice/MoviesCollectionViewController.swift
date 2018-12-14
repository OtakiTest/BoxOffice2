//
//  MoviesCollectionViewController.swift
//  BoxOffice
//
//  Created by 신재혁 on 15/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MoviesCollectionViewController: UICollectionViewController {
    
    var movies = SampleData.generateMoviesData()
    
    @IBOutlet weak var settingsButton: UIBarButtonItem!
    
    @IBAction func settingsButtonAction(_ sender: Any) {
        
        let optionMenu = UIAlertController(title: nil, message: "정렬방식", preferredStyle: .actionSheet)
        
        let orderByBooking = UIAlertAction(title: "예매율", style: .default)
        let orderByCuration = UIAlertAction(title: "큐레이션", style: .default)
        let orderByDate = UIAlertAction(title: "개봉일", style: .default)
        let cancelAction = UIAlertAction(title: "취소", style: .cancel)
        
        optionMenu.addAction(orderByBooking)
        optionMenu.addAction(orderByCuration)
        optionMenu.addAction(orderByDate)
        optionMenu.addAction(cancelAction)
        
        self.present(optionMenu, animated: true, completion: nil)
    }
}

extension MoviesCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return movies.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCollectionViewCell", for: indexPath) as! MovieCollectionViewCell
        
        let movie = movies[indexPath.item]
        cell.movie = movie
        
        return cell
    }
}
