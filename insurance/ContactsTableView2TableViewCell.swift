//
//  ContactsTableView2TableViewCell.swift
//  insurance
//
//  Created by Mitch on 20/11/2019.
//  Copyright © 2019 Mitrch. All rights reserved.
//

import UIKit

class ContactsTableView2TableViewCell: UITableViewCell {
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var officeLabel: UILabel!
    @IBOutlet weak var radioImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
