//
//  CustomTableViewController.swift
//  CustomTableViewCell
//
//  Created by 권현석 on 2023/07/28.
//

import UIKit

class CustomTableViewController: UITableViewController {
    
    let restaurant = RestaurantList()

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurant.restaurantList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
        
        let item = restaurant.restaurantList[indexPath.row]
        
        cell.configureTableViewCell(item: item)
        
        return cell
    }
    
    
    

}
