//
//  PointViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-28.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class PointViewController: UIViewController {

    @IBOutlet var btnPoints: UIButton!
    @IBAction func btnPointsOnPress(_ sender: Any) {
        performSegue(withIdentifier: "PointtoPointsLstSegue", sender: self)
    }
    @IBOutlet var btnTeam: UIButton!
    @IBAction func btnTeamOnPress(_ sender: Any) {
        performSegue(withIdentifier: "PointtoTeamSegue", sender: self)
    }
    @IBOutlet var btnAbout: UIButton!
    @IBAction func btnAboutOnPress(_ sender: Any) {
        performSegue(withIdentifier: "PointtoAboutSegue", sender: self)
    }
    @IBOutlet var NameRatingView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        NameRatingView.layer.borderWidth = 1

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
