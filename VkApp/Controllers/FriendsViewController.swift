//
//  FriendsViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    var users = UsersData.shared.usersData
    
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
        tabelView.delegate = self
       
    }
}
    // MARK: - Table view data source

    extension FriendsViewController: UITableViewDataSource, UITableViewDelegate {

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return users.count
    }
    //users
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "users", for: indexPath) as! FriendsViewCell
        cell.configure(users[indexPath.row])
        return cell
    }
    
}
