//: [Previous](@previous)

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let mid: Int = total / num
    let count: Int = num / 2
    if num % 2 == 0 {
        return Array((mid-count+1)...(mid+count))
    } else {
        return Array((mid-count)...(mid+count))
    }
}

solution(4, 2)

//: [Next](@next)
