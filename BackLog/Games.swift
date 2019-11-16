//
//  Games.swift
//  BackLog
//
//  Created by Gregory Keeley on 11/16/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import Foundation

struct Game {
    let name: String
    let genre: Genre
    let platform: Platform
    let releaseDate: String // Can we refactor to use Date type?
    let dateOfPurchase: String // Can we refactor to use Date type?
    let developer: Developer
    let publisher: Publisher
    let physical: Bool
    let digital: Bool
    let rating: Int
    let description: String
    
    static let games = [
        Game(name: "Halo: Combat Evolved", genre: Genre.fps, platform: Platform.xBox, releaseDate: "11/15/2001", dateOfPurchase: "11/15/2001" , developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 9, description: ""),
        Game(name: "Halo 2", genre: Genre.fps, platform: Platform.xBox, releaseDate: "11/9/2004", dateOfPurchase: "11/9/2004", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 10, description: ""),
        Game(name: "Halo 3", genre: Genre.fps, platform: Platform.xBox360, releaseDate: "9/25/2007", dateOfPurchase: "9/25/2007", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: true, rating: 10, description: ""),
    ]
}
