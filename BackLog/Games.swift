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
    let platformImage: String
    let releaseDate: String // Can we refactor to use Date type?
    let dateOfPurchase: String // Can we refactor to use Date type?
    let developer: Developer
    let publisher: Publisher
    let physical: Bool
    let digital: Bool
    let rating: Int
    let description: String
    let imageName: String
    
    static let games = [
        Game(name: "Luigi's Mansion 3", genre: Genre.actionAdventure, platform: Platform.nintendoSwitch, platformImage: "NS", releaseDate: "10/30/2019", dateOfPurchase: "10/30/2019", developer: Developer.nextLevelGames, publisher: Publisher.nintendo, physical: true, digital: false, rating: 8, description: "Luigi's Mansion 3 is an action-adventure game, in which players control the character of Luigi from a fixed third-person perspective, as they capture ghosts across a large hotel setting.", imageName: "LM3"),
        Game(name: "Marvel's Spider-Man", genre: Genre.actionAdventure, platform: Platform.playstation4, platformImage: "PS", releaseDate: "9/7/2018", dateOfPurchase: "9/7/2018", developer: Developer.insomniac, publisher: Publisher.sonyInteractiveEntertainment, physical: true, digital: false, rating: 10, description: "Marvel's Spider-Man is a 2018 action-adventure game developed by Insomniac Games and published by Sony Interactive Entertainment. Based on the Marvel Comics superhero Spider-Man, it is inspired by the long-running comic book mythology and adaptations in other media.", imageName: "Marvels-Spider-Man"),
        Game(name: "Halo: Combat Evolved", genre: Genre.fps, platform: Platform.xBox, platformImage: "XB", releaseDate: "11/15/2001", dateOfPurchase: "11/15/2001" , developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 9, description: "Super-soldier John-117, Master Chief of the United Nations Space Command, must battle a genocidal alien race known as the Covenant following his violent crash-landing on Halo, an ancient and mysterious ring-world.", imageName: "Halo_CE"),
        Game(name: "Halo 2", genre: Genre.fps, platform: Platform.xBox, platformImage: "XB", releaseDate: "11/9/2004", dateOfPurchase: "11/9/2004", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: false, rating: 10, description: "Halo 2 is a first-person shooter video game developed by Bungie Studios for the Xbox video game console and is forwards-compatible with the Xbox 360. It is the sequel to Halo: Combat Evolved and features a newly built graphics engine as well as many new gameplay elements.", imageName: "Halo_2"),
        Game(name: "Halo 3", genre: Genre.fps, platform: Platform.xBox360, platformImage:  "XB", releaseDate: "9/25/2007", dateOfPurchase: "9/25/2007", developer: Developer.bungie, publisher: Publisher.microsoft, physical: true, digital: true, rating: 10, description: "Halo 3's story centers on the interstellar war between twenty-sixth century humanity, a collection of alien races known as the Covenant, and the alien parasite Flood. The player assumes the role of the Master Chief, a cybernetically enhanced supersoldier, as he battles the Covenant and the Flood.", imageName: "Halo_3"),

    ]
}
