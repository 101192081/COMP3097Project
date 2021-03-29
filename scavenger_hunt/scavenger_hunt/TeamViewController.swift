//
//  TeamViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-27.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {

    @IBOutlet weak var btnPoints: UIButton!
    @IBAction func btnPointsOnPress(_ sender: Any) {
        performSegue(withIdentifier: "TtoPSegue", sender: self)
    }
    @IBOutlet weak var btnTeam: UIButton!
    @IBOutlet weak var btnAbout: UIButton!
    @IBAction func btnAboutOnPress(_ sender: Any) {
        performSegue(withIdentifier: "TtoASegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        btnTeam.isEnabled = false;
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
