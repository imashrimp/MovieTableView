//
//  MovieInfoTableViewController.swift
//  CustomTableViewCell
//
//  Created by 권현석 on 2023/07/28.
//

import UIKit

class MovieInfoTableViewController: UITableViewController {
    
    let movieList = MovieList()

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 200
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell") as! MovieTableViewCell
        
        let movieData = MovieList().movie[indexPath.row]
        
        cell.configureImageView()
        cell.configureLabelView()
        cell.configureLabelAttribute()
        cell.setUIContents(data: movieData)
        
        return cell
    }
}
