//
//  GameDetailsViewController.swift
//  BackLog
//
//  Created by Gregory Keeley on 11/18/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import UIKit

class GameDetailsViewController: UIViewController {

    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameDescription: UITextView!
    @IBOutlet weak var platformLogo: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var ratingLabel: UILabel!
    
    var game: Game?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameDescription.isEditable = false
        updateUI()
    }
    func updateUI() {
        gameImage.image = UIImage(named: game!.imageName)
        gameDescription.text = game!.description
        platformLogo.image = UIImage(named: game!.platformImage)
        ratingLabel.text = "Rating: \(game!.rating)/10"
    }

}

