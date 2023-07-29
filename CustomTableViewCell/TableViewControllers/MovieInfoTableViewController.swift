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
        
        cell.configureImageView()
        cell.configureLabelView()
        cell.configureLabel()
        
        let movie = MovieList().movie
        let item = movie[indexPath.row]
        
        cell.seperationBar[0].text = "|"
        cell.seperationBar[1].text = "|"
        
        
        cell.posterImageView.image = UIImage(named: item.title)
        cell.movieTitleLabel.text = item.title
        cell.releaseDateLabel.text = item.releaseDate
        cell.runningTimeLabel.text = "\(item.runtime)분"
        cell.rateLabel.text = "\(item.rate)점"
        cell.overviewLabel.text = item.overview
        
        
        return cell
    }
}
