//
//  MovieTableViewCell.swift
//  CustomTableViewCell
//
//  Created by 권현석 on 2023/07/28.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    static let identifier = "MovieTableViewCell"
    
    
    @IBOutlet var posterImageView: UIImageView!
    @IBOutlet var movieInfoView: UIView!
    @IBOutlet var movieTitleLabel: UILabel!
    @IBOutlet var movieInforStackView: UIStackView!
    @IBOutlet var releaseDateLabel: UILabel!
    @IBOutlet var seperationBar: [UILabel]!
    @IBOutlet var runningTimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    //TODO: 이거 텍스트뷰로 바꿔서 편집 불가능하게 할 수 있으면 해보자
    @IBOutlet var overviewLabel: UILabel!
    
    func configureImageView() {
        posterImageView.backgroundColor = .clear
        posterImageView.contentMode = .scaleAspectFit
    }
    
    func configureLabelView() {
        movieInfoView.backgroundColor = .clear
        movieInforStackView.backgroundColor = .clear
        movieTitleLabel.backgroundColor = .clear
        releaseDateLabel.backgroundColor = .clear
        runningTimeLabel.backgroundColor = .clear
        rateLabel.backgroundColor = .clear
        overviewLabel.backgroundColor = .clear
        
        for i in 0..<seperationBar.count {
            seperationBar[i].backgroundColor = .clear
        }
    }
    
    func configureLabel() {
        movieTitleLabel.font = .systemFont(ofSize: 20, weight: .heavy)
        
        for i in 0..<seperationBar.count {
            seperationBar[i].font = .systemFont(ofSize: 20, weight: .bold)
        }
        
        overviewLabel.numberOfLines = 0
    }
    

}
