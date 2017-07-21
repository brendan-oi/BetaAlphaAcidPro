//
//  HopVarietyTableViewCell.swift
//  BetaAlphaAcidPro
//
//  Created by Brendan Incorvaia on 7/20/17.
//  Copyright © 2017 Brendan Incorvaia. All rights reserved.
//

import UIKit

class HopVarietiesTableViewCell: UITableViewCell {

    @IBOutlet weak var hopNameLabel: UILabel!
    @IBOutlet weak var alphaAcidLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
