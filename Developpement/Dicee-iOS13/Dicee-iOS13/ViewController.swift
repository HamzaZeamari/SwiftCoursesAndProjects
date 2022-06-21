//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // IBOutlet allows me to reference UI elements
    @IBOutlet weak var deNumber1: UIImageView!
    @IBOutlet weak var deNumber2: UIImageView!
    
    let arrayDice = [UIImage(named: "DiceOne"),
         UIImage(named: "DiceTwo"),
         UIImage(named: "DiceThree"),
         UIImage(named: "DiceFour"),
         UIImage(named: "DiceFive"),
         UIImage(named: "DiceSix")]
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        SetDiceValue(dice: deNumber1)
        SetDiceValue(dice: deNumber2)
    

    }
    
    func SetDiceValue(dice: UIImageView){
        let rand = Int.random(in: 0...5)
        dice.image = arrayDice[rand]
        
    }
    

}

