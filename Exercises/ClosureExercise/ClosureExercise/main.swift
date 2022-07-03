//
//  main.swift
//  ClosureExercise
//
//  Created by Hamza Zeamari on 01/07/2022.
//

func calculator(n1: Int, n2: Int,operation: (Int,Int)-> Int) -> Int{
    return operation(n1,n2)
}
func add(n1: Int, n2: Int) -> Int{
    return n1+n2
}
func sub(n1: Int, n2: Int) -> Int{
    return n1-n2
}

// Many different ways to make closure
print(calculator(n1: 1, n2: 1, operation: add(n1:n2:)))
print(calculator(n1: 1, n2: 1, operation:{(n1: Int, n2: Int) -> Int in
    return n1+n2
} ))
print(calculator(n1: 1, n2: 1, operation:{(n1, n2) in n1+n2} ))
print(calculator(n1: 1, n2: 1, operation:{$0+$1}))


let array = [1,2,3,4]

func addOne(n1: Int) -> Int{
    return n1 + 1
}

let newArray = array.map({$0+1})
