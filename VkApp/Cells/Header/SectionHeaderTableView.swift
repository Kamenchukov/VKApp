//
//  SectionHeaderTableView.swift
//  VkApp
//
//  Created by Константин Каменчуков on 20.06.2021.
//

import UIKit
class SectionHeaderTableView: UITableViewHeaderFooterView {
    
    static let identifier = "SectionHeaderTableView"
    
    private let titleLable: UILabel = {
        let titleLable = UILabel()
        titleLable.translatesAutoresizingMaskIntoConstraints = false
        return titleLable
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setConstraints()
    }
    
    private func setConstraints() {
        
        contentView.addSubview(titleLable)
        
        let topAnchor = titleLable.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8)
        
        NSLayoutConstraint.activate([
            topAnchor,
            titleLable.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
            titleLable.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 32)
        ])
        topAnchor.priority = .init(999)
    }
    
    func configure(_ title: String?) {
        titleLable.text = title
    }
}
