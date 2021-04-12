//
//  MemberTableViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-04-11.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class MemberTableViewController: UITableViewController {
    
    var members = [Member]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSampleMembers()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return members.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "MemberTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MemberTableViewCell else{
            fatalError("The dequeued cell is not of MemberTableViewCell.")
        }
        let member = members[indexPath.row]
        
        cell.lblMemberName.text = member.name
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    private func loadSampleMembers(){
        guard let member1 = Member(name: "John Doe", email: "JohnDoe@email.com") else{
            fatalError("Unable to create member1")
        }
        guard let member2 = Member(name: "Jane Doe", email: "JaneDoe@email.com") else{
            fatalError("Unable to create member2")
        }
        guard let member3 = Member(name: "John Smith", email: "JohnSmith@email.com") else{
            fatalError("Unable to create member3")
        }
        members += [member1, member2, member3]
    }
}
