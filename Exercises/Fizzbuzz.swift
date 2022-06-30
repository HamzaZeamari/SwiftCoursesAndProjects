import Foundation

func fizzbuzz(_ value : Int) -> String{
    if(value%3==0 && value%5==0){
        return "FizzBuzz"
    }else if(value%3==0){
        return "Fizz"
    }else if(value%5==0){
        return "Buzz"
    }
    return "None"
}

func fizzbuzzSwitch(_ value : Int) -> String{
    switch(value%3==0,value%5==0){
        case (true,true):
            return "FizzBuzz"
            
        case (false,true):
            return "Buzz"
            
        case (true,false):
            return "Fizz"
            
        default:
            return "None"
            
    }
}

print(fizzbuzz(2))
print(fizzbuzzSwitch(2))