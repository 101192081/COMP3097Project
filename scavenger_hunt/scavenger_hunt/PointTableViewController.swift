//
//  PointTableViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-04-10.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class PointTableViewController: UITableViewController {
    
    var points = [Point]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePoints()
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return points.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PointTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PointTableViewCell else{
            fatalError("The dequeued cell is not of PointTableViewCell.")
        }
        let point = points[indexPath.row]
        
        cell.lblPointName.text = point.name
        cell.lblTag.text = point.tag
        cell.ratingControl.rating = point.rating
        
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
    public func addPoint(point: Point?){
        if(point != nil){
            points.append(point!)
        }
    }
    
    private func loadSamplePoints(){
        guard let point1 = Point(name: "point1", tag: "easy", rating: 4, address: "Unknown", task: "Unknown") else{
            fatalError("Unable to create point1")
        }
        guard let point2 = Point(name: "point2", tag: "medium", rating: 3, address: "Unknown", task: "Unknown") else{
            fatalError("Unable to create point2")
        }
        guard let point3 = Point(name: "point3", tag: "hard", rating: 5, address: "Unknown", task: "Unknown") else{
            fatalError("Unable to create point3")
        }
        points += [point1, point2, point3]
    }
}
