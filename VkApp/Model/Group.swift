//
//  Group.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import Foundation

struct GroupModel {
    let name: String
    let foto: String
}

struct GroupData {
    static let shared = GroupData()
    var groupData:[GroupModel]
    
    private init() {
        groupData = [
                     GroupModel(name: "Demolition Ranch", foto: "Matt"),
                     GroupModel(name: "We love Drake", foto: "Drake"),
                     GroupModel(name: "Fit girls", foto: "fit"),
                    ]
    }
}
