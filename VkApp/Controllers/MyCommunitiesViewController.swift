//
//  MyCommunitiesViewController.swift
//  VkApp
//
//  Created by Константин Каменчуков on 10.06.2021.
//

import UIKit

class MyCommunitiesViewController: UIViewController {
    
    @IBOutlet private var tableView: UITableView!
    
    var communities:[GroupModel] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.reloadData()
    }
    
    @IBAction func addGroup(_ segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
        guard
            let sourceController = segue.source as? AllCommunitiesViewController
        else { return }
            if let indexPath = sourceController.tabelView.indexPathForSelectedRow {
               let group = sourceController.allCommunities[indexPath.row]

                if !communities.contains(where: { $0.name == group.name}) {
                        communities.append(group)
                        tableView.reloadData()
        }
      }
    }
  }
    
}
    // MARK: - Table view data source
    extension MyCommunitiesViewController: UITableViewDataSource, UITableViewDelegate {
        
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return communities.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myGroups", for: indexPath) as! AllCommunitiesViewCell
        
        cell.configure(communities[indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            communities.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
 }


