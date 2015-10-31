//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Tinatua Kolleh on 10/23/15.
//  Copyright © 2015 kolleh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Show text "recording inprogress"
        //TODO: Record the user's voice
        
        if recordingLabel.hidden {
            recordingLabel.hidden = false
            print("begin recording")
        }else{
            recordingLabel.hidden = true;
            print("end recording")
        }
    }
}

