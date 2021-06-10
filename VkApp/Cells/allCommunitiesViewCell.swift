//
//  allCommunitiesViewCell.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class AllCommunitiesViewCell: UITableViewCell {

    @IBOutlet weak var allCommunitiesName: UILabel!
    @IBOutlet weak var allCommunitiesFoto: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
