//
//  User.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import Foundation

struct UserModel {
    let name: String
    let foto: String
    
    
}

struct UsersData {
    static let shared = UsersData()
    var usersData: [UserModel]
    
    private init() {
        usersData = [UserModel(name: "Ross", foto: "Ross_Geller"),
                     UserModel(name: "Chandler", foto: "Chandler_Bing"),
                     UserModel(name: "Joey", foto: "Joeyftribbiani"),
                     UserModel(name: "Phoebe", foto: "Phoebe_buffay"),
                     UserModel(name: "Monica", foto: "Monicaegeller"),
                     UserModel(name: "Rachel", foto: "JenniferAnistonFeb09"),
                     ]
    }
}

struct UserFoto {
   
    let foto: String
    
}

struct UsersFotoData {
    static let shared = UsersFotoData()
    var userFoto: [UserFoto]
    
    private init() {
        userFoto = [UserFoto(foto: "Ross_Geller"),
                    UserFoto(foto: "Chandler_Bing"),
                    UserFoto(foto: "Joeyftribbiani"),
                    UserFoto(foto: "Monicaegeller"),
                    UserFoto(foto: "Phoebe_buffay"),
                    UserFoto(foto: "JenniferAnistonFeb09"),]
    }
    
}
