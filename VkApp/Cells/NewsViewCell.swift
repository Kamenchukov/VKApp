//
//  NewsViewCell.swift
//  VkApp
//
//  Created by Константин Каменчуков on 24.06.2021.
//

import UIKit

class NewsViewCell: UITableViewCell {

    @IBOutlet weak var smallImage: UIImageView!
    @IBOutlet weak var topic: UILabel!
    @IBOutlet weak var textMassege: UILabel!
    @IBOutlet weak var bigImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    func configure( news: NewsModel) {
        smallImage.image = UIImage(named: news.smallImage ?? "defaultAvatar")
        topic.text = news.topic
        textMassege.text = news.text
        bigImage.image = UIImage(named: news.bigImage ?? "defaultAvatar")
        
    }
}
