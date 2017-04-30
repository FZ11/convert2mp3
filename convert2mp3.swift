//
//  convert2MP3.swift
//  AudioQueueTools
//
//  Created by Forrest on 4/29/17.
//
//

import Foundation


import UIKit
import AVFoundation

// The idea is to insert the sound to a array and play them in order. 
// The array will be created when users drag the notes.




let sound1 = NSURL(fileURLWithPath: Bundle.main.path(forResource:"C", ofType: "mp3")!)
let sound2 = NSURL(fileURLWithPath: Bundle.main.path(forResource:"A", ofType: "mp3")!)
let sound3 = NSURL(fileURLWithPath: Bundle.main.path(forResource:"G", ofType: "mp3")!)
// insert them into anarray
var soundArray : [NSURL] = [sound1, sound2, sound3]
var audioPlayer = AVAudioPlayer()


func playSound() {
    for index in 1...soundArray{
        audioPlayer = AVAudioPlayer(contentsOf: soundArray[index] as URL)
        audioPlayer.prepareToPlay()
    }
}

