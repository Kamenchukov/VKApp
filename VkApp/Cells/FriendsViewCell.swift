//
//  FriendsViewCell.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class FriendsViewCell: UITableViewCell {

    @IBOutlet weak var friendName: UILabel!
  
    @IBOutlet weak var avatarView: AvatarView!
    func configure(_ friends: UserModel) {
        friendName.text = friends.name
        avatarView.image = UIImage(named: friends.foto)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

}
