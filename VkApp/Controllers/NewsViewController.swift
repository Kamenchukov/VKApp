//
//  NewsViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 24.06.2021.
//

import UIKit

class NewsViewController: UIViewController {
    var news = NewsData.shared.newsData
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
       
    }
}
    extension NewsViewController: UITableViewDataSource, UITableViewDelegate {

     func numberOfSections(in tableView: UITableView) -> Int {
       
        return 1
    }

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
        return news.count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell") as? NewsViewCell
        else {
            return UITableViewCell()
        }
        cell.configure(news: news[indexPath.row])

        return cell
    }
    


}
