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
        
        print("There are \(Game.games.count) games, currently in the struct.")

        gameTableView.dataSource = self
    }
}

extension GamesViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(games.count)
        print(gameEntry.count)
        return gameEntry.count
        //return games.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath)
        let game = gameEntry[indexPath.row]
        print(indexPath.row)
        cell.textLabel?.text = game.name
        cell.detailTextLabel?.text = game.description
        return cell
    }
}
