//
//  AddPointViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-28.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class AddPointViewController: UIViewController {

    @IBOutlet var btnCencel: UIButton!
    @IBAction func btnCancelOnPress(_ sender: Any) {
        performSegue(withIdentifier: "ReturntoPSegue", sender: self)
    }
    @IBOutlet var btnCreatePoint: UIButton!
    @IBAction func btnCreatePointOnPress(_ sender: Any) {
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
