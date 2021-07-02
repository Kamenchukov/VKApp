//
//  Gallery.swift
//  VkApp
//
//  Created by Константин Каменчуков on 29.06.2021.
//

import Foundation
struct UserGallery {
    let userId: Int
    let imageNames: [String]?
    
    init(imageNames: [String]?, userId: Int) {
        self.imageNames = imageNames
        self.userId = userId
    }
}

struct UserGalleryDataStorage {
    static let shared = UserGalleryDataStorage()
    static var userGallery: [UserGallery] = [
        UserGallery(imageNames: ["Chandler_Bing", "JenniferAnistonFeb09", "Phoebe_buffay"],userId: 0),
        UserGallery(imageNames: ["JenniferAnistonFeb09", "Phoebe_buffay","Monicaegeller"], userId: 1),
        UserGallery(imageNames: ["Phoebe_buffay", "Joeyftribbiani"], userId: 2),
        UserGallery(imageNames: ["Ross_Geller", "Monicaegeller"], userId: 3),
        UserGallery(imageNames: ["Monicaegeller"], userId: 4),
        UserGallery(imageNames: ["Joeyftribbiani", "JenniferAnistonFeb09", "Chandler_Bing"], userId: 5)
    ]
}
