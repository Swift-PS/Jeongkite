//: [Previous](@previous)

import Foundation

func solution(_ x:Int) -> Bool {
    let sum: Int = getSum(x)
    return x % sum == 0 ? true : false
}

func getSum(_ x: Int) -> Int {
    var sum: Int = 0
    var i: Int = x
    
    while i > 0 {
        sum += i % 10
        i /= 10
    }
    
    return sum
}

solution(18)

//: [Next](@next)
