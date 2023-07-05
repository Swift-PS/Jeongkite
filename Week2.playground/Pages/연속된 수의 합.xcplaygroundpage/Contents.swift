//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var i: Int = total, start: Int = 0, result: Int
    while true {
        result = 0
        for j in 0..<num {
            result += (i - j)
        }
        if result == total {
            start = i
            break
        }
        i -= 1
    }
    return Array((start - num + 1) ... start)
}

solution(5, 5)

//: [Next](@next)
