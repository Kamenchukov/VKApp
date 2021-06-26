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
    @IBAction func tapFunction(sender: UITapGestureRecognizer) {
        AllCommunitiesViewCell.animate(withDuration: 0.75,
                                    delay: 0,
                                    usingSpringWithDamping: 0.30,
                                    initialSpringVelocity: 0.75,
                                    options: [.allowUserInteraction],
                                    animations: {
                                        self.allCommunitiesFoto.bounds = self.allCommunitiesFoto.bounds.insetBy(dx: 30, dy: 30)
                                    },
                                    completion: nil)
    }
    
    func configure(_ groups: GroupModel){
        allCommunitiesName.text = groups.name
        allCommunitiesFoto.image = UIImage(named: groups.foto)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        let tap = UITapGestureRecognizer(target: self, action: #selector(AllCommunitiesViewCell.tapFunction))
        allCommunitiesFoto.isUserInteractionEnabled = true
        allCommunitiesFoto.addGestureRecognizer(tap)
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
