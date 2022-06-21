//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player : AVAudioPlayer?
    
    @IBAction func RedCButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        do {
            sender.alpha = 0.5
            print("Start")
            sleep(1)
            print("End")
            sender.alpha = 1
        }
        
    }
    @IBAction func OrangeDButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    @IBAction func YellowEButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    @IBAction func GreenFButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    @IBAction func PurpleGButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    @IBAction func BlueAButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    @IBAction func PinkBButton(_ sender: UIButton) {
        playSound(variable: sender.currentTitle!)
        sender.alpha = 0.5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    func playSound(variable: String){
        guard let url = Bundle.main.url(forResource: variable, withExtension: "wav") else {return}
        
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

