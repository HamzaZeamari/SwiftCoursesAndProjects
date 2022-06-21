//
//  main.swift
//  Calculator
//
//  Created by Hamza Zeamari on 18/06/2022.
//

import Foundation

//Don't change this code:
func calculator() {
    print("Please enter A: ")
  let a = Int(readLine()!)! //First input
    print("Please enter B: ")
  let b = Int(readLine()!)! //Second input
  
  print(add(n1: a, n2: b))
  print(subtract(n1: a, n2: b))
  print(multiply(n1: a, n2: b))
  print(divide(n1: a, n2: b))
  
}

//Write your code below this line to make the above function calls work.
func add(n1 : Int, n2:Int) -> Int{
    return n1 + n2
}
func subtract(n1 : Int, n2:Int) -> Int{
    return n1 - n2
}
func multiply(n1 : Int, n2:Int) -> Int{
    return n1 * n2
}
func divide(n1 : Int, n2:Int) -> Int{
    return n1/n2
}

calculator()
