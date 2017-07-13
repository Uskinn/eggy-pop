//
//  Sound.swift
//  Eggypop
//
//  Created by Sergey Nevzorov on 1/11/17.
//  Copyright © 2017 Sergey Nevzorov. All rights reserved.
//

import UIKit
import AVFoundation

var audioPlayer = AVAudioPlayer()

class Sound {
    
    func eggySongOnRegularMode() {
        do {
            guard let audioFilePath = Bundle.main.path(forResource: "iggyPopSong", ofType: "m4a") else { return }
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath)
            let sound = try AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer = sound
            
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
                try AVAudioSession.sharedInstance().setActive(true)
            }
            catch {
                let error = NSError()
                print(error)
            }
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch {
            print(error)
        }
    }
    
    func eggySongOnSilentMode() {
        do {
            guard let audioFilePath = Bundle.main.path(forResource: "iggyPopSong", ofType: "m4a") else { return }
            let audioFileUrl = NSURL.fileURL(withPath: audioFilePath)
            let sound = try AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer = sound
            
            do {
                try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
                try AVAudioSession.sharedInstance().setActive(true)
            }
            catch {
                let error = NSError()
                print(error)
            }
            audioPlayer.prepareToPlay()
            audioPlayer.play()
        }
        catch {
            print(error)
        }
    }
}


