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
    
    func configure(_ groups: GroupModel){
        allCommunitiesName.text = groups.name
        allCommunitiesFoto.image = UIImage(named: groups.foto)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
