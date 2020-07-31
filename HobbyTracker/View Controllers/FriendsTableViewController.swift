//
//  FriendsTableViewController.swift
//  HobbyTracker
//
//  Created by Kalvin Zhao on 7/30/20.
//  Copyright © 2020 KalvinZhao. All rights reserved.
//

import UIKit

// tell the view controllers what it needs to look like
class FriendsTableViewController: UITableViewController {

    var friends: [Friend] = [Friend(name: "Bob", hometown: "Salt Lake City", hobbies: ["Reading"])]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // deletegate of my table view is going to be self
        tableView.delegate = self
        tableView.dataSource = self  // Both of thes follow the delegate pattern
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}