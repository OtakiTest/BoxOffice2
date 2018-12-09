//
//  MovieCell.swift
//  BoxOffice
//
//  Created by 신재혁 on 09/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var directorLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    var movie: Movie? {
        didSet {
            guard let movie = movie else { return }
            nameLabel.text = movie.name
            directorLabel.text = movie.director
            ratingImageView.image = image(forRating: movie.rating)
        }
    }
    
    func image(forRating rating: Int) -> UIImage? {
        let imageName = "background"
        return UIImage(named: imageName)
    }

}
