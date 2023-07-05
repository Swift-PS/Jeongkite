//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let mid: Int = total / num
    let count: Int = num / 2
    return Array((num % 2 == 0 ? (mid-count+1) : (mid-count))...(mid+count))
}

solution(4, 2)

//: [Next](@next)
