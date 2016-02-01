//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Tinatua Kolleh on 1/31/16.
//  Copyright © 2016 kolleh. All rights reserved.
//

import UIKit
import AVFoundation

class PlaySoundsViewController: UIViewController {

    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3"){
            let fileURL = NSURL.fileURLWithPath(filePath)
            audioPlayer = try! AVAudioPlayer(contentsOfURL: fileURL)
            
            print("playing slowly")
        }else{
            print("unable to find audio")
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func playSoundSlowly(sender: UIButton) {
        print("Playing sound back slowly")
        audioPlayer.play()

    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func playAudio(assetCatAudioName: String){
        var player: AVAudioPlayer?
        if let audio = NSDataAsset(name: assetCatAudioName){
            do{
                try player = AVAudioPlayer(data: audio.data, fileTypeHint: AVFileTypeMPEGLayer3)
                player!.play()
            } catch{
                print("Error initializing audio")
            }
        }
    }

}
