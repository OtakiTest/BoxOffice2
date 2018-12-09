//
//  MoviesViewController.swift
//  BoxOffice
//
//  Created by 신재혁 on 09/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import UIKit

class MoviesViewController: UITableViewController {
    
    var movies = SampleData.generateMoviesData()
}

// MARK: - UITableViewDataSource
extension MoviesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.director
        
        return cell
    }
}
