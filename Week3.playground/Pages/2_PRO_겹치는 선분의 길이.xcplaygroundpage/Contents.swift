//: [Previous](@previous)

import Foundation

import Foundation

func solution(_ lines:[[Int]]) -> Int {
    let compare12: Int = checkDistance(a: lines[0], b: lines[1])
    let compare13: Int = checkDistance(a: lines[0], b: lines[2])
    let compare23: Int = checkDistance(a: lines[1], b: lines[2])
    let compare = checkDistanceOf3(lines: lines)
    
    return compare12 + compare13 + compare23 - compare
}

func checkDistance(a: [Int], b: [Int]) -> Int {
    let length = max(a[1], b[1]) - min(a[0], b[0])
    let start = abs(a[0] - b[0])
    let end = abs(a[1] - b[1])
    let result = length - start - end
    return result > 0 ? result : 0
}
func checkDistanceOf3(lines: [[Int]]) -> Int {
    let startMin = min(lines[0][0], lines[1][0], lines[2][0])
    let startMax = max(lines[0][0], lines[1][0], lines[2][0])
    let endMin = min(lines[0][1], lines[1][1], lines[2][1])
    let endMax = max(lines[0][1], lines[1][1], lines[2][1])
    let result = (endMax - startMin) - abs(startMax - startMin) - abs(endMax - endMin)
    return result > 0 ? result : 0
}

//solution([[0, 1], [2, 5], [3, 9]])
//solution([[-1, 1], [1, 3], [3, 9]])
solution([[0, 5], [3, 9], [1, 10]])

//: [Next](@next)
