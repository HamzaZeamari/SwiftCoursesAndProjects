//
//  main.swift
//  IfElseExecise
//
//  Created by Hamza Zeamari on 18/06/2022.
//

import Foundation

//Don't change this
var aYear =  Int(readLine()!)!

func isLeap(year: Int) {
  
  //Write your code inside this function.
    if(year.isMultiple(of: 4)){
        if(year.isMultiple(of: 400)){
            print("année bisextile")
        }
        else{
            print("non")
        }
    }else{
        print("non")
    }
}

isLeap(year: aYear)

