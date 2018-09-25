//
//  SoundBoard.swift
//  SoundBoard1
//
//  Created by Mekhala Vithala on 9/24/18.
//  Copyright © 2018 playground. All rights reserved.
//

import Foundation
import Cocoa
import AVFoundation

class SoundBoard: NSWindow {
    
    var player: AVAudioPlayer?
    
    override func keyDown(with event: NSEvent) {
        super.keyDown(with: event)
        Swift.print("Caught a key down: \(event.keyCode)!")
        
       
        switch event.keyCode {
        case 19:
            playSound(for: "sound4.mp3")
        case 20:
            playSound(for: "sound2.mp3")
        case 21:
            playSound(for: "sound3.mp3")
        case 22:
            playSound(for: "sound4.mp3")
        default:
            print("none")
        }
    }
    
    func playSound(for sound: String) {
        
        let path = Bundle.main.path(forResource: sound, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("coundn't load the file")
        }
    }
}
