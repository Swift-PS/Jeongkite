//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var start: Int = 0, result: Int
    for i in 1...100 {
        result = 0
        for j in 0..<num {
            result += i + j
        }
        if result == total {
            start = i
            break
        }
    }
    return Array(start ..< (start+num))
}

solution(3, 12)

//: [Next](@next)
