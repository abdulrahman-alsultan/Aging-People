//
//  CustomCell.swift
//  Aging People
//
//  Created by admin on 06/12/2021.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var TView: UIView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
