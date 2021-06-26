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
    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
        FriendsViewCell.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.25,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.avatarView.bounds = self.avatarView.bounds.insetBy(dx: 40, dy: 40)
                                    },
                                    completion: nil)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(FriendsViewCell.tapFunction))
        avatarView.isUserInteractionEnabled = true
        avatarView.addGestureRecognizer(tap)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
