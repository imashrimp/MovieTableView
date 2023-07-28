//
//  CustomTableViewCell.swift
//  CustomTableViewCell
//
//  Created by 권현석 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier: String = "CustomTableViewCell"
    
    @IBOutlet var checkImageView: UIImageView!
    @IBOutlet var restaurantLabel: UILabel!
    @IBOutlet var starRatingLabel: UILabel!
    @IBOutlet var pinnedButton: UIButton!
    
    func configureTableViewCell(item: Restaurant) {
        
        restaurantLabel.text = item.name
        starRatingLabel.text = "\(item.starRating)"
        
        
        if item.check == true {
            checkImageView.image = UIImage(systemName: "circle.fill")
        } else {
            checkImageView.image = UIImage(systemName: "circle")
        }
        
        if item.pinned == true {
            pinnedButton.setImage(UIImage(systemName: "pin.fill"), for: .normal)
        } else {
            pinnedButton.setImage(UIImage(systemName: "pin.slash.fill"), for: .normal)
        }
    }
}
