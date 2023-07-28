//
//  TableViewCell1.swift
//  MVVM
//
//  Created by HARSHID PATEL on 22/07/23.
//

import UIKit

class TableViewCell1: UITableViewCell {
    
    @IBOutlet weak var titleLable: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
