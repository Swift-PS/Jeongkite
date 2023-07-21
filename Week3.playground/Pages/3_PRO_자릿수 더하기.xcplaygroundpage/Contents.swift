//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var number: Int = n
    
    while number > 0 {
        answer += number % 10
        number /= 10
    }
    
    return answer
}

solution(987)

//: [Next](@next)
