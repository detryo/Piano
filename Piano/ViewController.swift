//
//  ViewController.swift
//  Piano
//
//  Created by Cristian Sedano Arenas on 24/1/19.
//  Copyright © 2019 Cristian Sedano Arenas. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer : AVAudioPlayer!
    
    let soundsArray = [ "a1", "a1s", "b1", "c1", "c1s", "c2", "d1",
                        "d1s","e1", "f1","f1s", "g1", "g1s"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func playSound(_ sender: UIButton) {
        let idKey = sender.tag
        let fileName = soundsArray[idKey-1]
        
        if let soundURL : URL = Bundle.main.url(forResource: fileName, withExtension: "mp3"){
            
            do {
                audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
            } catch {
                print(error)
            }
            audioPlayer.play()
        }
    }
}

