//
//  MyCommunitiesViewCell.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class MyCommunitiesViewCell: UITableViewCell {

    @IBOutlet weak var myCommunityFoto: UIImageView!
    @IBOutlet weak var myCommunityName: UILabel!
    
    func configure(_ groups: GroupModel){
        myCommunityName.text = groups.name
        myCommunityFoto.image = UIImage(named: groups.foto)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
