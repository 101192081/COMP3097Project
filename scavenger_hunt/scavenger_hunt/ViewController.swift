//
//  ViewController.swift
//  scavenger_hunt
//bu
//  Created by Tech on 2021-03-27.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtSearch: UITextField!
    @IBOutlet var btnAddPoint: UIButton!
    @IBAction func btnAddPointOnPress(_ sender: Any) {
        txtSearch.text = ""
        performSegue(withIdentifier: "PtoAddPointSegue", sender: self)
    }
    @IBOutlet weak var pointsTableView: UITableView!
    @IBOutlet weak var btnPoints: UIButton!
    
    @IBOutlet weak var btnTeam: UIButton!
    @IBAction func btnTeaOnPress(_ sender: Any) {
        txtSearch.text = ""
        performSegue(withIdentifier: "PtoTSegue", sender: self)
    }
    @IBOutlet weak var btnAbout: UIButton!
    @IBAction func btnAboutOnPress(_ sender: Any) {
        txtSearch.text = ""
        performSegue(withIdentifier: "PtoASegue", sender: self)
    }
    
    @IBOutlet weak var pointList: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        btnPoints.isEnabled = false
    }


}

