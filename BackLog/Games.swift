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
        Game(name: "Halo: Combat Evolved", genre: Genre.fps, platform: Platform.xBox, releaseDate: "11/15/2001", dateOfPurchase: "11/15/2001" , developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 9, description: "Super-soldier John-117, Master Chief of the United Nations Space Command, must battle a genocidal alien race known as the Covenant following his violent crash-landing on Halo, an ancient and mysterious ring-world."),
        Game(name: "Halo 2", genre: Genre.fps, platform: Platform.xBox, releaseDate: "11/9/2004", dateOfPurchase: "11/9/2004", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 10, description: "Halo 2 is a first-person shooter video game developed by Bungie Studios for the Xbox video game console and is forwards-compatible with the Xbox 360. It is the sequel to Halo: Combat Evolved and features a newly built graphics engine as well as many new gameplay elements."),
        Game(name: "Halo 3", genre: Genre.fps, platform: Platform.xBox360, releaseDate: "9/25/2007", dateOfPurchase: "9/25/2007", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: true, rating: 10, description: "Halo 3's story centers on the interstellar war between twenty-sixth century humanity, a collection of alien races known as the Covenant, and the alien parasite Flood. The player assumes the role of the Master Chief, a cybernetically enhanced supersoldier, as he battles the Covenant and the Flood."),
    ]
}
