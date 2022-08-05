//
//  ViewController.swift
//  Player sound
//
//  Created by Christian Rezende on 05/08/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player = AVAudioPlayer()
    @IBOutlet weak var sliderVolume: UISlider!
    
    @IBAction func play(_ sender: Any) {
        player.play()
    }
    
    @IBAction func pause(_ sender: Any) {
        player.pause()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
        player.currentTime = 0
    }
    
    @IBAction func updateVolume(_ sender: Any) {
        player.volume = sliderVolume.value
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let path = Bundle.main.path(forResource: "bach", ofType: "mp3"){
            let url = URL(fileURLWithPath: path)
            do {
                player = try AVAudioPlayer(contentsOf: url)
                player.prepareToPlay()
            } catch let error {
                print("Error on try init AVAudioPlayer: \(error.localizedDescription)")
            }
            
            
        }
        
    }
    
    
}

