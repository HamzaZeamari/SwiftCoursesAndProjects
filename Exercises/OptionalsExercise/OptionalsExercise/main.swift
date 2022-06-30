//
//  main.swift
//  OptionalsExercise
//
//  Created by Hamza Zeamari on 18/06/2022.
//

import Foundation

// FirstTest
var username : String? = nil
username = "testUsername"
print(username!)


//Don't change this
var studentsAndScores = ["Amy": Int(readLine()!)!, "James": Int(readLine()!)!, "Helen": Int(readLine()!)!]

func highestScore(scores: [String: Int]) {
  
  //Write your code here.
    var temp : Int? = 0
    for score in scores {
        if(score.value > temp!){
            temp = score.value
        }
    }
  
    print(temp!)
  
}

highestScore(scores: studentsAndScores)
