//
//  News.swift
//  VkApp
//
//  Created by Константин Каменчуков on 24.06.2021.
//

import Foundation

struct NewsModel {
    let smallImage: String?
    let topic: String
    let bigImage: String?
    let text: String
}

struct NewsData {
    static let shared = NewsData()
    var newsData:[NewsModel]
    private init() {
        newsData = [
            NewsModel(smallImage: "Joeyftribbiani", topic: "Сколько одежды Чеднлера я могу одеть?", bigImage: "allclothes", text: "Правильный ответ: Всю! И пусть моя месть будет страшна!"),
            NewsModel(smallImage: "friends", topic: "Воссоединение", bigImage: "2021", text: "Актеры игравшие персонажей в сериале Друзья снова встретяться, вспомнят как это было и расскажут, что происходит в их жизни сейчас. А также мы узнаем маленькие тайны съемочного процесса сериала"),
            NewsModel(smallImage: "JenniferAnistonFeb09", topic: "Почему Дженифер не стареет?", bigImage: "nestareet", text: "Мы провели расследование и выянили шокирующие подробности от которых у вас снесет башню!")
        ]
    }
    
}
