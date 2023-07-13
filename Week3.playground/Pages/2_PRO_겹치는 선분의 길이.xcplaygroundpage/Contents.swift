//: [Previous](@previous)

import Foundation

import Foundation

func solution(_ lines:[[Int]]) -> Int {
    let compare12: Int = checkDistance(a: lines[0], b: lines[1])
    let compare13: Int = checkDistance(a: lines[0], b: lines[2])
    let compare23: Int = checkDistance(a: lines[1], b: lines[2])
    
    return compare12 + compare13 + compare23
}

func checkDistance(a: [Int], b: [Int]) -> Int {
    let length = (a[1] < b[1] ? b[1] : a[1]) - (a[0] > b[0] ? b[0] : a[0])
    let start = abs(a[0] - b[0])
    let end = abs(a[1] - b[1])
    let result = length - start - end
    return result > 0 ? result : 0
}

//solution([[0, 1], [2, 5], [3, 9]])
//solution([[-1, 1], [1, 3], [3, 9]])
solution([[0, 5], [3, 9], [1, 10]])

//: [Next](@next)
