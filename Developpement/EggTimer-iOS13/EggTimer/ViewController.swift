//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var labelTop: UILabel!
    var timer = Timer()
    var TotalTime = 0
    var secondPassed = 0
    var player : AVAudioPlayer?

    let timeTab : [String:Int] = ["Soft":5, "Medium":7, "Hard":12]
    
    @IBAction func hardnessSelection(sender: UIButton){
        timer.invalidate()
        let hardness = sender.currentTitle!
        TotalTime = timeTab[hardness]!
        progressBar.progress = 0.0
        secondPassed = 0
        labelTop.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    @objc func updateTimer(){
        if secondPassed < TotalTime{
            secondPassed += 1
            progressBar.progress = Float(secondPassed)/Float(TotalTime)
        }else{
            timer.invalidate()
            labelTop.text = "Done"
            playSound()
            
        }
    }
    func playSound(){
            guard let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3") else {return}
            
            do {
                player = try AVAudioPlayer(contentsOf: url)
                   guard let player = player else { return }

                   player.prepareToPlay()
                   player.play()

               } catch let error as NSError {
                   print(error.description)
               }
        }
    
}
