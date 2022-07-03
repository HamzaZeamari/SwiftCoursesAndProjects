//
//  main.swift
//  ExtensionExercise
//
//  Created by Hamza Zeamari on 02/07/2022.
//
//

import AppKit
import Cocoa


extension Double {
    func round(to places: Int) -> Double{
        let precisionNumber = pow(10,Double(places))
        var n = self
        n = n * precisionNumber
        n.round()
        n = n / precisionNumber
        return n
    }
}

var myDouble = 3.1415

myDouble = myDouble * 1000
myDouble.round()
myDouble = myDouble / 1000


print(myDouble.round(to: 3))