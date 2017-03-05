//
//  MovieReviewTableViewCell.swift
//  Movie Reviews
//
//  Created by Bidyut Mukherjee on 3/5/17.
//  Copyright © 2017 Tech Innovator. All rights reserved.
//

import UIKit

class MovieReviewTableViewCell: UITableViewCell {

    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bylineLabel: UILabel!
    @IBOutlet weak var mpaaRatingLabel: UILabel!
    @IBOutlet weak var openDateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    // Since cells get reused, reset the contents before reuse, else they might bleed through to next cell
    override func prepareForReuse() {
        reviewImageView.image = nil
        
        titleLabel.text = ""
        bylineLabel.text = ""
        mpaaRatingLabel.text = ""
        openDateLabel.text = ""
    }
    
}
