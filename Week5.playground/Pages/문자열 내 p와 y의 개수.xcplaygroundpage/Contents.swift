//: [Previous](@previous)

import Foundation

func solution(_ s:String) -> Bool {
    var answer: Int = 0
    
    for char in s {
        if char == "p" || char == "P" {
            answer += 1
        } else if char == "y" || char == "Y" {
            answer -= 1
        }
    }
    
    return answer == 0 ? true : false
}

solution("pPoooyY")
solution("Pyy")

//: [Next](@next)
