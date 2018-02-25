//
//  BusinessCell.swift
//  Yelp
//
//  Created by Henry Vuong on 2/24/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet var thumbImageView: UIImageView!
    
    @IBOutlet var businessNameLabel: UILabel!
    
    @IBOutlet var distanceLabel: UILabel!
    
    @IBOutlet var ratingImageView: UIImageView!
    
    @IBOutlet var reviewsCountLabel: UILabel!
    
    @IBOutlet var addressLabel: UILabel!
    
    @IBOutlet var categoriesLabel: UILabel!
    
    var business: Business! {
        didSet {
            businessNameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            addressLabel.text = business.address
            categoriesLabel.text = business.categories
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
                        
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.thumbImageView.layer.cornerRadius = 10
        self.thumbImageView.clipsToBounds = true
    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
