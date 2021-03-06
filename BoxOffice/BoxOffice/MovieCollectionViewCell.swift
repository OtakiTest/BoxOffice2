//
//  MovieCollectionViewCell.swift
//  BoxOffice
//
//  Created by 신재혁 on 15/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    
    var movie: Movie? {
        didSet {
            guard let movie = movie else { return }
            nameLabel.text = movie.name
            directorLabel.text = movie.director
            movieImageView.image = image(forRating: movie.rating)
        }
    }
    
    func image(forRating rating: Int) -> UIImage? {
        let imageName = "background"
        return UIImage(named: imageName)
    }
}
