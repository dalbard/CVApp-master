//
//  ExperienceTableViewCell.swift
//  CVApp
//
//  Created by Axel Dalbard on 2019-11-08.
//  Copyright © 2019 Axel Dalbard. All rights reserved.
//

import UIKit

class ExperienceTableViewCell: UITableViewCell {

    @IBOutlet weak var workImage: UIImageView!
    
    @IBOutlet weak var workTitleLabel: UILabel!
    
    @IBOutlet weak var workDurationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
