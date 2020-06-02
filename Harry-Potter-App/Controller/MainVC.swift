//
//  ViewController.swift
//  Harry-Potter-App
//
//  Created by Alibi on 28.02.18.
//  Copyright © 2018 Alibi. All rights reserved.
//

import UIKit
import AVFoundation

class MainVC: UIViewController {
    
    var musicPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playMusic()
    }

    func playMusic() {
        
        let path = Bundle.main.path(forResource: "music", ofType: "mp3")!
        
        do {
            musicPlayer = try AVAudioPlayer(contentsOf: URL(string: path)!)
            
            musicPlayer.prepareToPlay()
            musicPlayer.numberOfLoops = -1
            musicPlayer.play()
        } catch let err as NSError {
            print(err.debugDescription)
        }
    }

}

