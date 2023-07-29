//
//  MovieTableViewCell.swift
//  CustomTableViewCell
//
//  Created by 권현석 on 2023/07/29.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var movieInfoView: UIView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieInforStackView: UIStackView!
    @IBOutlet var releaseDateLabel: UILabel!
    @IBOutlet var seperationBar: [UILabel]!
    @IBOutlet var runningTimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var overivewTextView: UITextView!
    
    func configureImageView() {

    }
    
    func configureCellUIAttribute() {
        posterImageView.backgroundColor = .clear
        posterImageView.contentMode = .scaleAspectFit
        movieInfoView.backgroundColor = .clear
        movieInforStackView.backgroundColor = .clear
        movieTitleLabel.backgroundColor = .clear
        releaseDateLabel.backgroundColor = .clear
        runningTimeLabel.backgroundColor = .clear
        rateLabel.backgroundColor = .clear
        overivewTextView.backgroundColor = .clear
        
        for i in 0..<seperationBar.count {
            seperationBar[i].backgroundColor = .clear
            seperationBar[i].font = .systemFont(ofSize: 20, weight: .bold)
        }
        
        movieTitleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        overivewTextView.showsHorizontalScrollIndicator = false
        overivewTextView.isEditable = false
        overivewTextView.isSelectable = false
        overivewTextView.bounces = false
    }
    
    func setUIContents(data: Movie) {
        posterImageView.image = UIImage(named: data.title)
        movieTitleLabel.text = data.title
        releaseDateLabel.text = data.releaseDate
        for i in 0..<seperationBar.count {
            seperationBar[i].text = "|"
        }
        runningTimeLabel.text = "\(data.runtime)분"
        rateLabel.text = "\(data.rate)점"
        overivewTextView.text = data.overview
    }
}
