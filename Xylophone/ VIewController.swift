//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    var audioPlayer: AVAudioPlayer!
    let soundFileArray = ["note1","note2","note3","note4","note5","note6", "note7"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(soundFileArray[sender.tag - 1],"wav")
    }
    
    func playSound(_ fileName: String, _ fileExtension: String) {
        // sets the location of sound file
        let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
        } catch {
            print(error)
        }
        audioPlayer.play()
    }

}

