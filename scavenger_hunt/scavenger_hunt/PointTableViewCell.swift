//
//  PointTableViewCell.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-27.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class PointTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lblPointName: UILabel!
    @IBOutlet weak var lblTag: UILabel!
    @IBOutlet weak var ratingControl: RatingControl!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
