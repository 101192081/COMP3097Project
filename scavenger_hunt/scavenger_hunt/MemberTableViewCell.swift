//
//  MemberTableViewCell.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-04-11.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class MemberTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblMemberName: UILabel!
    @IBOutlet weak var btnMemberRemove: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
