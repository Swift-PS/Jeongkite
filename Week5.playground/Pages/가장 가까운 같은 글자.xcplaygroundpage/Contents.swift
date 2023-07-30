//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    for (index, char) in s.enumerated() {
        var nearIndex: Int = -1
        for (i, c) in Array(s)[0..<index].reversed().enumerated() {
            if c == char {
                nearIndex = i + 1
                break
            }
        }
        result.append(nearIndex)
    }
    
    return result
}

solution("banana")

//: [Next](@next)
