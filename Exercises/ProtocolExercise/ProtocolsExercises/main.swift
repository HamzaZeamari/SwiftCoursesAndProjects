//
//  main.swift
//  ProtocolsExercises
//
//  Created by Hamza Zeamari on 30/06/2022.
//

import Foundation

protocol CanFly{
    func fly()
}

class Bird{
    
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("The bird make a new Bird.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("Fly as an Eagle")
    }
    
    func soar(){
        print("The eagle glides in the air using air currents.")
    }
}

class Penguin: Bird {
    func swim(){
        print("The penguin paddles through water.")
    }
}

struct FlyingMuseum{
    func flyingDemos(flyingObject: CanFly){
        flyingObject.fly()
    }
}

struct Airplane: CanFly{
    func fly() {
        print("Fly as a Plane !")
    }
}


let penguin = Penguin()
let eagle = Eagle()
let airPlane = Airplane()

let museum = FlyingMuseum()
museum.flyingDemos(flyingObject: airPlane)
