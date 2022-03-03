//
//  TableViewCell.swift
//  API CALLING
//
//  Created by MAC OS on 02/03/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var lblId: UILabel!
    
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblUserId: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
