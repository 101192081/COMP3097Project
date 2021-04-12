//
//  MemberViewController.swift
//  scavenger_hunt
//
//  Created by Tech on 2021-03-28.
//  Copyright © 2021 GBC. All rights reserved.
//

import UIKit

class MemberViewController: UIViewController {

    @IBOutlet var MemberNameView: UIView!
    @IBOutlet weak var lblMemberName: UILabel!
    @IBOutlet weak var txtMessage: UITextView!
    @IBOutlet weak var btnSend: UIButton!
    @IBOutlet weak var btnPoints: UIButton!
    @IBAction func btnPointsOnPress(_ sender: Any) {
        txtMessage.text = ""
        performSegue(withIdentifier: "toPointsSegue", sender: self)
    }
    @IBOutlet weak var btnTeam: UIButton!
    @IBAction func btnTeamOnPress(_ sender: Any) {
        txtMessage.text = ""
        performSegue(withIdentifier: "toTeamSegue", sender: self)
    }
    @IBOutlet weak var btnAbout: UIButton!
    @IBAction func btnAboutOnPress(_ sender: Any) {
        txtMessage.text = ""
        performSegue(withIdentifier: "toAboutSegue", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        MemberNameView.layer.borderWidth = 1
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
