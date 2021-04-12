//
//  AddPointViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-28.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class AddPointViewController: UIViewController {
    var tag = "easy"

    @IBOutlet weak var txtName: UITextField!
    @IBOutlet weak var btnTag: UISegmentedControl!
    @IBAction func btnTagOnChange(_ sender: Any) {
        switch btnTag.selectedSegmentIndex {
        case 0:
            self.tag = "easy"
        case 1:
            self.tag = "medium"
        case 2:
            self.tag = "hard"
        default:
            self.tag = "easy"
        }
    }
    @IBOutlet weak var txtAddress: UITextField!
    @IBOutlet weak var txtTask: UITextField!
    @IBOutlet var btnCencel: UIButton!
    @IBAction func btnCancelOnPress(_ sender: Any) {
        performSegue(withIdentifier: "ReturntoPSegue", sender: self)
    }
    @IBOutlet var btnCreatePoint: UIButton!
    @IBAction func btnCreatePointOnPress(_ sender: Any) {
        /*let pointTableViewController:
            PointTableViewController = storyboard?.instantiateViewController(withIdentifier: "StoryboardIdentifier") as! PointTableViewController;
        pointTableViewController.addPoint(point: Point( name: txtName.text ?? "PlaceHolder", tag: self.tag, rating: 0, address: txtAddress.text ?? "PlaceHolder", task: txtTask.text ?? "PlaceHolder"));*/
        performSegue(withIdentifier: "ReturntoPSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
