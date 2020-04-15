//
//  TableViewCell.swift
//  ajayTask
//
//  Created by Himansu Sekhar Panigrahi on 15/04/20.
//  Copyright © 2020 hpApps. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var viewHeightConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Setting View Height To 75
        viewHeightConstraint.constant = 75
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
}
