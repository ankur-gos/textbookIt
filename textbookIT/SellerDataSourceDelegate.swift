//
//  SellerDataSourceDelegate.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/19/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

extension SellerMainViewController: UITableViewDataSource{
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2 // number of panels
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1 // One row per Section
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellIdentifier = "cell"
        let cell: ListingCell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! ListingCell
        cell.clipsToBounds = false
        cell.layer.masksToBounds = false
        cell.layer.shadowOffset = CGSizeMake(0, 0)
        cell.layer.shadowColor = UIColor.grayColor().CGColor
        cell.layer.shadowOpacity = 1
        cell.layer.shadowRadius = 2
        cell.layer.cornerRadius = 3
        cell.layer.borderWidth = 0
        cell.titleLabel.text = self.names[indexPath.section]
        cell.bookImage.image = UIImage(named: self.images[indexPath.section])
        cell.priceLabel.text = self.prices[indexPath.section]
        cell.qualityImage.image = UIImage(named: self.qualityBars[indexPath.section])
        switch(stars[indexPath.section]){
        case 5:
            cell.userRating5Image.image = UIImage(named: "star.png")
            cell.userRating4Image.image = UIImage(named: "star.png")
            cell.userRating3Image.image = UIImage(named: "star.png")
            cell.userRating2Image.image = UIImage(named: "star.png")
            cell.userRatingImage.image = UIImage(named: "star.png")
        case 4:
            cell.userRating4Image.image = UIImage(named: "star.png")
            cell.userRating3Image.image = UIImage(named: "star.png")
            cell.userRating2Image.image = UIImage(named: "star.png")
            cell.userRatingImage.image = UIImage(named: "star.png")
        case 3:
            cell.userRating3Image.image = UIImage(named: "star.png")
            cell.userRating2Image.image = UIImage(named: "star.png")
            cell.userRatingImage.image = UIImage(named: "star.png")
        case 2:
            cell.userRating2Image.image = UIImage(named: "star.png")
            cell.userRatingImage.image = UIImage(named: "star.png")
        case 1:
            cell.userRatingImage.image = UIImage(named: "star.png")
        default: NSLog("SearchResultsViewController: Error retrieving rating")
        }
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        var headerView: UIView = UIView()
        headerView.backgroundColor = UIColor.clearColor()
        return headerView
    }
}
