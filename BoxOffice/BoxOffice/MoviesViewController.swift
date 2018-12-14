//
//  MoviesViewController.swift
//  BoxOffice
//
//  Created by 신재혁 on 09/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import UIKit

class MoviesViewController: UITableViewController {
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 150
//    }
    
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

// MARK: - UITableViewDataSource
extension MoviesViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath) as! MovieCell
        
        let movie = movies[indexPath.row]
        cell.movie = movie
        
        return cell
    }
}
