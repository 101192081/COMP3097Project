//
//  AboutViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-27.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    @IBOutlet weak var btnPoints: UIButton!
    
    @IBAction func btnPointsOnPress(_ sender: Any) {
        performSegue(withIdentifier: "AtoPSegue", sender: self)
    }
    @IBOutlet weak var btnTeam: UIView!
    @IBAction func btnTeamOnPress(_ sender: Any) {
        performSegue(withIdentifier: "AtoTSegue", sender: self)
    }
    @IBOutlet weak var btnAbout: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnAbout.isEnabled = false;
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
