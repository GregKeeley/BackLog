//
//  ViewController.swift
//  BackLog
//
//  Created by Gregory Keeley on 11/16/19.
//  Copyright © 2019 Gregory Keeley. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController {
    
    @IBOutlet weak var gameTableView: UITableView!
    
    private var games = [Game]() {
        didSet {
            gameTableView.reloadData()
        }
    }
    var gameEntry = Game.games
    
    override func viewDidLoad() {
        super.viewDidLoad()
        gameTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let gameDetailVC = segue.destination as? GameDetailsViewController,
            let indexPath = gameTableView.indexPathForSelectedRow else {
                fatalError("Did not prepare for segue correctly")
        }
        let game = gameEntry[indexPath.row]
        gameDetailVC.game = game
        
    }
}
//MARK: Extensions
extension GamesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(games.count)
        print(gameEntry.count)
        return gameEntry.count
        //return games.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as? GameCell else {
            fatalError("Failed to dequeue GameCell")
        }
        let game = gameEntry[indexPath.row]
        cell.configureCell(for: game)
        
        
        return cell
    }
}

