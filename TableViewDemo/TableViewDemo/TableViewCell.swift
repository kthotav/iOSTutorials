//
//  TableViewCell.swift
//  TableViewDemo
//
//  Created by Karthik Thota on 9/4/17.
//  Copyright © 2017 karthikthota. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    // MARK: - outlets
    
    @IBOutlet weak var emblemImage: UIImageView!
    @IBOutlet weak var characterImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var houseLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        emblemImage.contentMode = .scaleAspectFit
        characterImage.contentMode = .scaleAspectFit
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
