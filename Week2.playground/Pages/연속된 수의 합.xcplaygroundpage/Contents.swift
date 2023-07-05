//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    // 배열의 가장 큰 수가 total보다 클 수 있음!! -> 이 풀이 완전 틀림
    var i: Int = total + num, start: Int = 0, result: Int
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

solution(4, 2)

//: [Next](@next)
