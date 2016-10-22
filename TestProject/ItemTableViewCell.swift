//
//  ItemTableViewCell.swift
//  TestProject
//
//  Created by Dean Guo on 10/21/16.
//  Copyright © 2016 fourestfire. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
