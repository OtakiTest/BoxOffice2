//
//  SampleData.swift
//  BoxOffice
//
//  Created by 신재혁 on 09/12/2018.
//  Copyright © 2018 ninetyfivejae. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generateMoviesData() -> [Movie] {
        return [
            Movie(name: "Bill Evans", director: "Tic-Tac-Toe", rating: 4),
            Movie(name: "Oscar Peterson", director: "Spin the Bottle", rating: 5),
            Movie(name: "Dave Brubeck", director: "Texas Hold 'em Poker", rating: 2)
        ]
    }
}
