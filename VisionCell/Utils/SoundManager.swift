//
//  SoundManager.swift
//  VisionCell
//
//  Created by Marcelle Ribeiro Queiroz on 27/05/25.
//

import Foundation
import AVKit

class SoundManager {
    static let playInstance = SoundManager()
    
    var backgroundPlayer: AVAudioPlayer?
    
    // MARK: SOM BACKGROUND INÍCIO DO APP
    func playBackground() {
        guard let url = Bundle.main.url(forResource: "background", withExtension: ".mp3") else { return }
                
        do {
            try AVAudioSession.sharedInstance().setCategory(.ambient, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            backgroundPlayer = try AVAudioPlayer(contentsOf: url)
            backgroundPlayer?.numberOfLoops = -2
            backgroundPlayer?.volume = 1
            backgroundPlayer?.play()
        } catch {
            print("error")
        }
    }
}
