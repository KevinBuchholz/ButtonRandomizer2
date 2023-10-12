//
//  TrollViewModel.swift
//  ButtonRandomizer
//
//  Created by Kevin Buchholz on 10/4/23.
//

import Foundation
import AVKit

class TrollViewModel: ObservableObject {
    private var audioPlayer: AVAudioPlayer!
    private var bassPlayer : AVAudioPlayer!
    private var tom1Player : AVAudioPlayer!
    private var tom2Player : AVAudioPlayer!
    private var cymbalPlayer : AVAudioPlayer!
    private var tomPlayer: AVAudioPlayer!
    private var snarePlayer: AVAudioPlayer!
    private var ridePlayer : AVAudioPlayer!
    private var hihatPlayer : AVAudioPlayer!
    private var crash1Player : AVAudioPlayer!
    private var crash2Player : AVAudioPlayer!
    
    let allSounds : [Any] = []
    
    var drumHits = 0
    
/*    if drumhits are more than 10
        random sound
            else
            assigned sound*/
    

    func play() {
        let flush = Bundle.main.path(forResource: "flush", ofType: "mp3")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: flush!))
        self.audioPlayer.play()
    }
    
    func playFart() {
        let fart = Bundle.main.path(forResource: "fart", ofType: "mp3")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: fart!))
        self.audioPlayer.play()
    }
    
    func playVictory() {
        let flush = Bundle.main.path(forResource: "victory", ofType: "mp3")
        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: flush!))
        self.audioPlayer.play()
    }
    
    func playBass() {
        let basscut = Bundle.main.path(forResource: "basscut", ofType: "mp3")
        self.bassPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: basscut!))
        self.bassPlayer.play()
    }
    
    func playSnare() {
        let snarecut = Bundle.main.path(forResource: "snarecut", ofType: "mp3")
        self.snarePlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: snarecut!))
        self.snarePlayer.play()
    }
    
    func playTom1() {
        let tom1cut = Bundle.main.path(forResource: "tom1cut", ofType: "mp3")
        self.tom1Player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: tom1cut!))
        self.tom1Player.play()
    }
    
    func playTom2() {
        let tom2cut = Bundle.main.path(forResource: "tom2cut", ofType: "mp3")
        self.tom2Player = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: tom2cut!))
        self.tom2Player.play()
    }
    
    func playFloorTom() {
        let tomfloorcut = Bundle.main.path(forResource: "tomfloorcut", ofType: "mp3")
        self.tomPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: tomfloorcut!))
        self.tomPlayer.play()
    }
    
    func playHiHat() {
        let hihatcut = Bundle.main.path(forResource: "hihatcut", ofType: "mp3")
        self.cymbalPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: hihatcut!))
        self.hihatPlayer.play()
    }
    
    func playRide() {
        let ridecut = Bundle.main.path(forResource: "ridecut", ofType: "mp3")
        self.ridePlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: ridecut!))
        self.ridePlayer.play()
    }
    
    func playCrash1() {
        let crash1cut = Bundle.main.path(forResource: "crash1cut", ofType: "mp3")
        self.cymbalPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: crash1cut!))
        self.crash1Player.play()
    }
    
    func playCrash2() {
        let crash2cut = Bundle.main.path(forResource: "crash2cut", ofType: "mp3")
        self.cymbalPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: crash2cut!))
        self.crash2Player.play()
    }
}
