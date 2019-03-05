//
//  ViewController.swift
//  Biomad
//
//  Created by Aidan Maldonado on 3/5/19.
//  Copyright © 2019 Aidan Maldonado. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Game Variables
    var chems = 10
    //Text for dynamic events
    var currentText = ""
    var textArray = [""]
    //Text for game opening
    var startText = ["A gunshot", "You jolt awake", "Was it a dream?", "You walk to your window", "The world is on fire", "You turn on your TV in a panic", "Banners across the news fill you in", "Your country is being invaded", "Your city is being invaded", "The lights go out", "3 days have passed", "You only have 10 hours of chems left", "You leave your apartment to find more"]
    var sTCount = 0
    //Buttons
    var actionOneTitle = "Continue"
    
    //Game Variables
    @IBOutlet weak var textViewer: UILabel!
    @IBOutlet weak var chemLabel: UILabel!
    @IBOutlet weak var actionOneName: UIButton!
    @IBOutlet weak var actionTwoName: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentText = startText[0]
        updateLabels()
    }
    
    func updateLabels() {
        chemLabel.text = "Chems: \(chems) hours"
        textViewer.text = currentText
        actionOneName.setTitle(actionOneTitle, for: .normal)
        actionTwoName.setTitle("", for: .normal)
    }
    
    @IBAction func actionOne() {
        if sTCount < (startText.count - 1) {
            sTCount += 1
            currentText = startText[sTCount]
        } else { //Main Gameplay Loops
            
        }
        
        updateLabels()
    }
    


}

