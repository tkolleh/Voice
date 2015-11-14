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
    @IBOutlet weak var stopRecordingBtn: UIButton!
    @IBOutlet weak var recordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        stopRecordingBtn.hidden = true;
        recordButton.enabled = true;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Record the user's voice
        recordButton.enabled = false
        recordingLabel.hidden = false
        stopRecordingBtn.hidden = false
        print("begin recording")
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordingLabel.hidden = true
        stopRecordingBtn.hidden = true
        recordButton.enabled = true
        print("end recording")
    }
}

