//
//  ListingCell.swift
//  textbookIT
//
//  Created by Ankur Goswami on 5/14/15.
//  Copyright (c) 2015 Free Time Tech. All rights reserved.
//

import UIKit

class ListingCell: UITableViewCell {
    @IBOutlet var bookImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!

    @IBOutlet var userRatingImage: UIImageView!
    @IBOutlet var qualityImage: UIImageView!
    @IBOutlet var userRating2Image: UIImageView!
    @IBOutlet var userRating3Image: UIImageView!
    @IBOutlet var userRating4Image: UIImageView!
    @IBOutlet var userRating5Image: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
