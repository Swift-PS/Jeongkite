//: [Previous](@previous)

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var b: Int = budget
    
    for (i, a) in d.sorted().enumerated() {
        b -= a
        if b < 0 {
            return i
        }
    }
    return d.count
}

solution([1,3,2,5,4], 9)
solution([2,2,3,3], 10)

//: [Next](@next)
