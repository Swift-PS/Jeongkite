//: [Previous](@previous)

import Foundation

func solution(_ number:[Int]) -> Int {
    var result: Int = 0
    for i in 0..<number.count-2 {
        for j in i+1..<number.count-1 {
            for k in j+1..<number.count {
                if number[i] + number[j] + number[k] == 0 {
                    result += 1
                }
            }
        }
    }
    
    return result
}

solution([-2, 3, 0, 2, -5])
solution([-3, -2, -1, 0, 1, 2, 3])
solution([-1, 1, -1, 1])

//: [Next](@next)
