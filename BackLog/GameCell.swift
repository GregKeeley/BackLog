//
//  GameCell.swift
//  BackLog
//
//  Created by Gregory Keeley on 11/19/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import UIKit

class GameCell: UITableViewCell {

    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameTitleLabel: UILabel!
    @IBOutlet weak var platformImage: UIImageView!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!

    func configureCell(for game: Game) {
        gameImage.image = UIImage(named: game.imageName)
        gameTitleLabel.text = game.name
        platformImage.image = UIImage(named: game.platformImage)
        publisherLabel.text = game.publisher.rawValue
        developerLabel.text = game.developer.rawValue
        releaseDateLabel.text = game.releaseDate
    }
}

