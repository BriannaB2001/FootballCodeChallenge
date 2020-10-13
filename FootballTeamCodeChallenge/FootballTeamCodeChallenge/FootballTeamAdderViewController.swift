//
//  FootballTeamAdderViewController.swift
//  FootballTeamCodeChallenge
//
//  Created by Brianna Babcock on 10/12/20.
//

import UIKit

class FootballTeamAdderViewController: UIViewController {

        var team: FootballTeam?
        
        @IBOutlet weak var addNameTextField: UITextField!
        @IBOutlet weak var addWinsTextField: UITextField!
       
        override func viewDidLoad() {
            super.viewDidLoad()
        }

        @IBAction func saveButtonTapped(_ sender: Any) {
            team = FootballTeam(teamName: addNameTextField.text ?? "name", wins: addWinsTextField.text ?? "1")
            performSegue(withIdentifier: "AdderToTracker", sender: self)
            
        }
}
