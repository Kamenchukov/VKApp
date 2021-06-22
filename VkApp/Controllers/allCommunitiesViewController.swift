//
//  allCommunitiesViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class AllCommunitiesViewController: UIViewController, UISearchBarDelegate {
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tabelView: UITableView!
    var allCommunities = GroupData.shared.groupData
    var foundCommunities = [GroupModel]()
    var searching = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
        tabelView.delegate = self
        self.searchBar.delegate = self
       
    }
}
    // MARK: - Table view data source

    extension AllCommunitiesViewController: UITableViewDataSource, UITableViewDelegate {
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return searching ? foundCommunities.count: allCommunities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "allGroups", for: indexPath) as! AllCommunitiesViewCell
        
        cell.configure(searching ? foundCommunities[indexPath.row] : allCommunities[indexPath.row])
        
        return cell
    }
    
        public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
            foundCommunities = searchText != "" ? allCommunities.filter {$0.name.lowercased().contains(searchText.lowercased())} : allCommunities
            searching = true
            tabelView.reloadData()
        }
        
        public func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
            searching = false
            searchBar.text = ""
            tabelView.reloadData()
        }
}
