//
//  allCommunitiesViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class AllCommunitiesViewController: UIViewController {
    
    @IBOutlet weak var tabelView: UITableView!
    var allCommunities = GroupData.shared.groupData
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
        tabelView.delegate = self
       
    }
}
    // MARK: - Table view data source

    extension AllCommunitiesViewController: UITableViewDataSource, UITableViewDelegate {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return allCommunities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allGroups", for: indexPath) as! AllCommunitiesViewCell
        
        cell.configure(allCommunities[indexPath.row])
        
        return cell
    }
    
}
