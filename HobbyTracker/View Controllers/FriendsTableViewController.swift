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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as? FriendTableViewCell else { fatalError("Cell identifier is wrong of the cell is not of type FriendTableCell") }// as? is downcasting

        // Configure the cell...
        let friend = friends[indexPath.row]
        cell.nameLabel.text = friend.name
        cell.homeTownLabel.text = friend.hometown
        cell.hobbiesLabel.text = "\(friend.hobbies.count) hobbies"
        
        return cell
    }


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "ModalNewFriend" {
            let newFriendVC = segue.destination as? NewFriendViewController
            // Tell the delegator (NewFriendViewController) that the table view controller will be its delegate.
            newFriendVC?.delegate = self // when you have a new friend this is who you will tell, the tableviewcontroller
        }
    }
}

extension FriendsTableViewController: NewFriendDelegate {
    
    // this is the detail VC telling us that a friend was created. We can do anything we want with this friend. We should probably add it to our array of friends and reload the table view to show it to the user.
    func friendWasCreated(friend: Friend) {
        friends.append(friend)
        tableView.reloadData()
    }
    
    
}
