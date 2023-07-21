//: [Previous](@previous)

import Foundation

func solution(_ n:Int) -> Int {
    for i in 2..<n-1 {
        if n % i == 1 {
            return i
        }
    }
    return n-1
}

solution(10)
solution(12)

//: [Next](@next)
